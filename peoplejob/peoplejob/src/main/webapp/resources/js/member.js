/**
 * member.js
 */
	var contextPath="/herb";

	$(function(){
		$('#email2').change(function(){
			if($(this).val()=='etc'){
				$('#email3').css('visibility','visible');
				$('#email3').focus();
				$('#email3').val("");
			}else{
				$('#email3').css('visibility','hidden');
			}
		});
				
		
		$('#btnZipcode').click(function(){
			window.open(contextPath+"/zipcode/zipcode.do","zip",
		"left=0,top=0,width=500px,height=450px,location=yes,resizable=yes");
		});
		
		$('#btnChkId').click(function(){
			var userid=$('#userid').val();
			
			open(contextPath+"/member/checkUserid.do?userid="+userid,"chk",
				"width=400,height=300,location=yes,resizable=yes");	
		});
		
	});
	
	function validate_hp(hp){
		var pattern=new RegExp(/^[0-9]*$/g);
		return pattern.test(hp);
	 	/*  정규식  /^[0-9]*$/g
		0 에서 9사이의 숫자로 시작하거나 끝나야 한다는 의미 
		(^는 시작, $는 끝을 의미)
		닫기 대괄호(]) 뒤의 * 기호는 0번 이상 반복	  */
	}
	
	function validate_userid(userid){
		var pattern=new RegExp(/^[a-zA-Z0-9_]+$/g);
		return pattern.test(userid);
		
		/* 정규식  /^[a-zA-Z0-9_]+$/g
		a에서 z 사이의 문자, A~Z사이의 문자, 0 에서 9사이의 숫자나 _로 시작하거나 
		끝나야 한다는 의미
		닫기 대괄호(]) 뒤의 + 기호는 이 패턴이 한 번 또는 그 이상 반복된다는 의미 */

	}