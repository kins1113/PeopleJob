package com.ez.peoplejob.excel;

import java.util.ArrayList;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.streaming.SXSSFSheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.stereotype.Service;

import com.ez.peoplejob.member.model.MemberVO;

@Service
public class ExcelService {
	
	 /**
     * 엑셀파일로 만들 리스트 생성
     * @param names
     * @param prices
     * @param quantities
     * @return 엑셀파일 리스트
     * 여기에는 결국 값이 들어온다.
     */
    public ArrayList<Fruit> makeFruitList(String[] names, long[] prices, int[] quantities){
        ArrayList<Fruit> list = new ArrayList<Fruit>();
        for(int i=0; i< names.length; i++) {
            Fruit fruit = new Fruit(names[i], prices[i], quantities[i]);
            list.add(fruit);
        }
        return list;
    }
    
    /**
     * 과일 리스트를 간단한 엑셀 워크북 객체로 생성
     * @param list
     * @return 생성된 워크북
     */
    public SXSSFWorkbook makeSimpleFruitExcelWorkbook(List<Fruit> list) {
        SXSSFWorkbook workbook = new SXSSFWorkbook();
        
        // 시트 생성
        SXSSFSheet sheet = workbook.createSheet("과일표");
        
        //시트 열 너비 설정
        sheet.setColumnWidth(0, 1500);
        sheet.setColumnWidth(0, 3000);
        sheet.setColumnWidth(0, 3000);
        sheet.setColumnWidth(0, 1500);
        
        // 헤더 행 생
        Row headerRow = sheet.createRow(0);
        // 해당 행의 첫번째 열 셀 생성  Cell org.apache.poi.ss.usermodel.Row.createCell(int column)

        Cell headerCell = headerRow.createCell(0);
        headerCell.setCellValue("번호");
        // 해당 행의 두번째 열 셀 생성
        headerCell = headerRow.createCell(1);
        headerCell.setCellValue("과일이름");
        // 해당 행의 세번째 열 셀 생성
        headerCell = headerRow.createCell(2);
        headerCell.setCellValue("가격");
        // 해당 행의 네번째 열 셀 생성
        headerCell = headerRow.createCell(3);
        headerCell.setCellValue("수량");
        
        // 과일표 내용 행 및 셀 생성
        Row bodyRow = null;
        Cell bodyCell = null;
        for(int i=0; i<list.size(); i++) {
            Fruit fruit = list.get(i);
            
            // 행 생성
            bodyRow = sheet.createRow(i+1);
            // 데이터 번호 표시
            bodyCell = bodyRow.createCell(0);
            bodyCell.setCellValue(i + 1);
            // 데이터 이름 표시
            bodyCell = bodyRow.createCell(1);
            bodyCell.setCellValue(fruit.getName());
            // 데이터 가격 표시
            bodyCell = bodyRow.createCell(2);
            bodyCell.setCellValue(fruit.getPrice());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(3);
            bodyCell.setCellValue(fruit.getQuantity());
        }
        
        return workbook;
    }
    
    /**
     * 생성한 엑셀 워크북을 컨트롤레에서 받게해줄 메소
     * @param list
     * @return
     */
    public SXSSFWorkbook excelFileDownloadProcess(List<Fruit> list) {
        return this.makeSimpleFruitExcelWorkbook(list);
    }
    
    
    /**
     * 일반회원 을 액셀처리해주는 메서드
     * @param list
     * @return
     */
    public SXSSFWorkbook makeSimpleMemberExcelWorkbook(List<MemberVO> list) {
        SXSSFWorkbook workbook = new SXSSFWorkbook();
        
        // 시트 생성
        SXSSFSheet sheet = workbook.createSheet("일반회원 정보");
        
        //시트 열 너비 설정
        sheet.setColumnWidth(0, 1500);
        sheet.setColumnWidth(0, 3000);
        sheet.setColumnWidth(0, 4000);
        sheet.setColumnWidth(0, 4000);
        sheet.setColumnWidth(0, 15000);
        sheet.setColumnWidth(0, 8000);
        sheet.setColumnWidth(0, 1500);
        sheet.setColumnWidth(0, 12000);
        sheet.setColumnWidth(0, 9000);
        sheet.setColumnWidth(0, 1500);
        // 헤더 행 생
        Row headerRow = sheet.createRow(0);
        // 해당 행의 첫번째 열 셀 생성  Cell org.apache.poi.ss.usermodel.Row.createCell(int column)

        Cell headerCell = headerRow.createCell(0);
        headerCell.setCellValue("");
        
        headerCell = headerRow.createCell(1);
        headerCell.setCellValue("회원 코드");
        // 해당 행의 두번째 열 셀 생성
        headerCell = headerRow.createCell(2);
        headerCell.setCellValue("아이디");
        // 해당 행의 세번째 열 셀 생성
        headerCell = headerRow.createCell(3);
        headerCell.setCellValue("이름");
        // 해당 행의 네번째 열 셀 생성
        headerCell = headerRow.createCell(4);
        headerCell.setCellValue("주소");
        // 해당 행의 다섯째 열 셀 생성
        headerCell = headerRow.createCell(5);
        headerCell.setCellValue("생년월일");
        // 해당 행의 여섯째 열 셀 생성
        headerCell = headerRow.createCell(6);
        headerCell.setCellValue("성별");
        // 해당 행의 일곱째 열 셀 생성
        headerCell = headerRow.createCell(7);
        headerCell.setCellValue("이메일");
        // 해당 행의 여덟째 열 셀 생성
        headerCell = headerRow.createCell(8);
        headerCell.setCellValue("전화번호");
        // 해당 행의 아홉째 열 셀 생성
        headerCell = headerRow.createCell(9);
        headerCell.setCellValue("이력서번호");
        
        // 과일표 내용 행 및 셀 생성
        Row bodyRow = null;
        Cell bodyCell = null;
        for(int i=0; i<list.size(); i++) {
            MemberVO memberVo = list.get(i);
            
            // 행 생성
            bodyRow = sheet.createRow(i+1);
            // 데이터 번호 표시
            bodyCell = bodyRow.createCell(0);
            bodyCell.setCellValue(i + 1);
            // 데이터 이름 표시
            bodyCell = bodyRow.createCell(1);
            bodyCell.setCellValue(memberVo.getMemberCode());
            // 데이터 가격 표시
            bodyCell = bodyRow.createCell(2);
            bodyCell.setCellValue(memberVo.getMemberid());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(3);
            bodyCell.setCellValue(memberVo.getMembername());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(4);
            bodyCell.setCellValue(memberVo.getAddress()+" "+memberVo.getAddressdetail());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(5);
            bodyCell.setCellValue(memberVo.getBirth());
            // 데이터 이름 표시
            bodyCell = bodyRow.createCell(6);
            bodyCell.setCellValue(memberVo.getMembergender());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(7);
            bodyCell.setCellValue(memberVo.getEmail());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(8);
            bodyCell.setCellValue(memberVo.getTel());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(9);
            bodyCell.setCellValue(memberVo.getAuthorityCode());
        }
        
        return workbook;
    }
    
    //기업 회원용 처리 메서드 만들기 ~~!!!! 아직 안만듬
    public SXSSFWorkbook makeSimpleCompanyExcelWorkbook(List<MemberVO> list) {
        SXSSFWorkbook workbook = new SXSSFWorkbook();
        
        // 시트 생성
        SXSSFSheet sheet = workbook.createSheet("일반회원 정보");
        
        //시트 열 너비 설정
        sheet.setColumnWidth(0, 1500);
        sheet.setColumnWidth(0, 3000);
        sheet.setColumnWidth(0, 4000);
        sheet.setColumnWidth(0, 4000);
        sheet.setColumnWidth(0, 15000);
        sheet.setColumnWidth(0, 8000);
        sheet.setColumnWidth(0, 1500);
        sheet.setColumnWidth(0, 12000);
        sheet.setColumnWidth(0, 9000);
        sheet.setColumnWidth(0, 1500);
        // 헤더 행 생
        Row headerRow = sheet.createRow(0);
        // 해당 행의 첫번째 열 셀 생성  Cell org.apache.poi.ss.usermodel.Row.createCell(int column)

        Cell headerCell = headerRow.createCell(0);
        headerCell.setCellValue("");
        
        headerCell = headerRow.createCell(1);
        headerCell.setCellValue("회원 코드");
        // 해당 행의 두번째 열 셀 생성
        headerCell = headerRow.createCell(2);
        headerCell.setCellValue("아이디");
        // 해당 행의 세번째 열 셀 생성
        headerCell = headerRow.createCell(3);
        headerCell.setCellValue("이름");
        // 해당 행의 네번째 열 셀 생성
        headerCell = headerRow.createCell(4);
        headerCell.setCellValue("주소");
        // 해당 행의 다섯째 열 셀 생성
        headerCell = headerRow.createCell(5);
        headerCell.setCellValue("생년월일");
        // 해당 행의 여섯째 열 셀 생성
        headerCell = headerRow.createCell(6);
        headerCell.setCellValue("성별");
        // 해당 행의 일곱째 열 셀 생성
        headerCell = headerRow.createCell(7);
        headerCell.setCellValue("이메일");
        // 해당 행의 여덟째 열 셀 생성
        headerCell = headerRow.createCell(8);
        headerCell.setCellValue("전화번호");
        // 해당 행의 아홉째 열 셀 생성
        headerCell = headerRow.createCell(9);
        headerCell.setCellValue("이력서번호");
        
        // 과일표 내용 행 및 셀 생성
        Row bodyRow = null;
        Cell bodyCell = null;
        for(int i=0; i<list.size(); i++) {
            MemberVO memberVo = list.get(i);
            
            // 행 생성
            bodyRow = sheet.createRow(i+1);
            // 데이터 번호 표시
            bodyCell = bodyRow.createCell(0);
            bodyCell.setCellValue(i + 1);
            // 데이터 이름 표시
            bodyCell = bodyRow.createCell(1);
            bodyCell.setCellValue(memberVo.getMemberCode());
            // 데이터 가격 표시
            bodyCell = bodyRow.createCell(2);
            bodyCell.setCellValue(memberVo.getMemberid());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(3);
            bodyCell.setCellValue(memberVo.getMembername());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(4);
            bodyCell.setCellValue(memberVo.getAddress()+" "+memberVo.getAddressdetail());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(5);
            bodyCell.setCellValue(memberVo.getBirth());
            // 데이터 이름 표시
            bodyCell = bodyRow.createCell(6);
            bodyCell.setCellValue(memberVo.getMembergender());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(7);
            bodyCell.setCellValue(memberVo.getEmail());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(8);
            bodyCell.setCellValue(memberVo.getTel());
            // 데이터 수량 표시
            bodyCell = bodyRow.createCell(9);
            bodyCell.setCellValue(memberVo.getAuthorityCode());
        }
        
        return workbook;
    }
}
