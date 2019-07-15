package com.ez.peoplejob.excel;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ez.peoplejob.common.PaginationInfo;
import com.ez.peoplejob.manager.member.model.MemberServiceAdmin;
import com.ez.peoplejob.member.model.MemberVO;

@Controller
public class ExcelController {
	
	@Autowired private ExcelService service;
	@Autowired private MemberServiceAdmin memberServiceAdmin;
	private Logger logger=LoggerFactory.getLogger(ExcelController.class);
	
	@RequestMapping("/excelTest.do")
	public String exccelTestView() {

		return "excelTest";
	}
	
	/**
	 * 여기에서 서버에 값을 가지고 와서 뿌려준다.
	 */
	@RequestMapping(value = "/downloadExcelFile.do", method = RequestMethod.POST)
    public String downloadExcelFile(Model model) {
        String[] names = {"자몽", "애플망고", "멜론", "오렌지"};
        long[] prices = {5000, 10000, 7000, 6000};
        int[] quantities = {50, 50, 40, 40};
        List<Fruit> list = service.makeFruitList(names, prices, quantities);
        
        SXSSFWorkbook workbook = service.excelFileDownloadProcess(list);
        
        model.addAttribute("locale", Locale.KOREA);
        model.addAttribute("workbook", workbook);
        model.addAttribute("workbookName", "과일표");
        
        return "excelDownloadView";
    }
	
	/**
	 * 옥환 - 관리자에서 member를 엑셀 처리하는 핸들러
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/downloadExcelFileMember.do", method = RequestMethod.POST)
    public String downloadExcelFileMember(
    		@ModelAttribute MemberVO memberVo,
			@RequestParam(required = false) String startDay,
			@RequestParam(required = false) String endDay,
			@RequestParam(required = false) String filterKey,
			@RequestParam(required = false) String filterCode,
			@RequestParam(required = false) String all,
			@RequestParam(required = false) String authorityCk,
    		Model model) {
		
		logger.info("엑셀 처리시 파라미터 memberVo={}",memberVo);
		logger.info("파라미터 startDay={}, endDay={}",startDay,endDay);
		logger.info("파라미터 filterCode={}, filterKey={}",filterCode,filterKey);
		logger.info("all={}, authorityCk={}",all,authorityCk);
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		//날짜 처리
		map.put("memberVo", memberVo);
		map.put("startDay", startDay);
		map.put("endDay", endDay);
		map.put("filterKey", filterKey);
		map.put("filterCode", filterCode);
		
		List<MemberVO> list=null;
		if(all==null) {
			
			//페이징 처리
			PaginationInfo pagingInfo=new PaginationInfo();
			pagingInfo.setCurrentPage(memberVo.getCurrentPage());
			if(memberVo.getRecordCountPerPage()!=0) {
				pagingInfo.setRecordCountPerPage(memberVo.getRecordCountPerPage());
			}else {
				pagingInfo.setRecordCountPerPage(10);
			}
			pagingInfo.setBlockSize(5);
			
			memberVo.setFirstRecordIndex(pagingInfo.getFirstRecordIndex());
			memberVo.setRecordCountPerPage(pagingInfo.getRecordCountPerPage());
			
			list = memberServiceAdmin.selectAllManager(map);
			logger.info("정해진 값만 맴버 조회 결과 list.size={}",list.size());
		
		}else if("all".equals(all)) {
			Map<String, int[]> intMap=new HashMap<String, int[]>();
			if(authorityCk.equals("member")) {
				int[] i= {1};
				intMap.put("i",i);
				list = memberServiceAdmin.memberByAuthority(intMap);
				logger.info("전체 맴버 조회 결과 list.size={}",list.size());
			}else if(authorityCk.equals("company")) {
				int[] i= {2,3};
				intMap.put("i",i);
				list = memberServiceAdmin.memberByAuthority(intMap);
				logger.info("전체 맴버 조회 결과 list.size={}",list.size());
			}
			
		}
		
        
        SXSSFWorkbook workbook = service.makeSimpleMemberExcelWorkbook(list);
        
        model.addAttribute("locale", Locale.KOREA);
        model.addAttribute("workbook", workbook);
        model.addAttribute("workbookName", "회원정보");
        
        return "excelDownloadView";
    }

}
