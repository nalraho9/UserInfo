<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
 <head>
  <meta charset="utf-8" />
  <title> 회원정보 입력 양식 </title>
  <style>
   	 body,html{width:100%, height:100%}  
	 table{
		position:absolute; left:50%; top:50%;
		transform:translate(-50%, -50%);
		cellpadding:10px;
		height:400px;
	}
  </style>
  <script>
    function id_search(){
    	theURL = "id.jsp";
    	window.open(theURL,'id_check','width=500,height=200');
    }
 </script>
 
 <script>
 function check() {
 	var regExp = /^[a-z][0-9a-z]*$/g;
 	var string = form.id.value;
 	
 	if(!regExp.test(string)){
 		alert('올바른 아이디를 입력하세요.\n영문소문자+숫자조합');
 		form.id.focus();
 		return false;		
 	}
 	if(!form.password.value){
 		alert('비밀번호를 입력하세요.');
 		form.password.focus();
 		return false;		
 	}
 	if(!form.name.value){
 		alert('이름을 입력하세요.');
 		form.name.focus();
 		return false;		
 	}
 	if(!form.tel2.value || !form.tel3.value){
 		alert('전화번호를 입력하세요.');
 		form.tel2.focus();
 		return false;		
 	}
 	var h = form.hobby;
 	if(!(h[0].checked || h[1].checked || h[2].checked || h[3].checked)){
 		alert('취미를 하나 이상 선택하세요.');
 		return false;	
 	}
 	if(!form.intro.value){
 		alert('전화번호를 입력하세요.');
 		form.intro.focus();
 		return false;		
 	}
 	return true;
 } 
 </script>

 </head>

 <BODY> 
   <FORM ACTION="join.jsp" METHOD=post name="form" onsubmit="check()">   
	<TABLE>     
	  <tr><td COLSPAN="2" ALIGN="center"><h2>회원 정보 입력</h2></td></tr>   
	  <TR>   
	   <TD> 아이디 </TD>   
	   <TD> <INPUT TYPE="text" NAME="id" SIZE="10" readonly> 
	   		<INPUT TYPE="button" value="아이디 생성"  onclick="id_search()"></TD> 
	  <TR>   
	   <TD> 이름 </TD>
	      
	   <TD> <INPUT TYPE="text" NAME="name" SIZE="10"></TD> 
	   </TR> <TR>   <TD> 암호 </TD>   
	   <TD> <INPUT TYPE="password" NAME="password" SIZE="10"></TD> 
	  </TR> 
	  <TR>   
	   <TD> 전화번호 </TD>   
	   <TD> <SELECT NAME="tel1">     
			   <OPTION SELECTED> 010</OPTION>     
			   <OPTION> 02</OPTION>     
			   <OPTION> 053</OPTION>     
			   <OPTION> 011</OPTION>     
		    </SELECT>
		   - <INPUT NAME="tel2" SIZE="4" maxlength=4>
		   - <INPUT NAME="tel3" SIZE="4" maxlength=4> </TD> 
	  </TR>

	  <TR>   
	   <TD> 직업 </TD>   
	   <TD> 
	     <SELECT SIZE="1" NAME="job">     
	       <OPTION SELECTED> 학생</OPTION>     
		   <OPTION> 회사원</OPTION>     
		   <OPTION> 자영업</OPTION>     
		   <OPTION> 기타</OPTION>     
		 </SELECT> </TD> 
	  </TR> 
	  <TR>   
	   <TD> 성별 </TD>   
	   <TD> <INPUT TYPE="radio" NAME="gender" VALUE="1" CHECKED>남자&nbsp;&nbsp;       
	        <INPUT TYPE="radio" NAME="gender" VALUE="2">여자 </TD> 
	  </TR>
	  <TR>   
	   <TD> 취미 </TD>   
	   <TD> <INPUT TYPE="checkbox" NAME="hobby" VALUE="바둑">바둑&nbsp;&nbsp;     
	        <INPUT TYPE="checkbox" NAME="hobby" VALUE="게임">게임&nbsp;&nbsp;     
			<INPUT TYPE="checkbox" NAME="hobby" VALUE="낚시">낚시&nbsp;&nbsp;     
			<INPUT TYPE="checkbox" NAME="hobby" VALUE="독서">독서 </TD>
	  </TR> 
	  <TR>   
	   <TD> 자기 소개하기</TD>   
	   <TD> <TEXTAREA ROWS="5" COLS="60" NAME="intro" PLACEHOLDER="자기를 소개하는 글을 쓰세요"></textarea></TD> 
	  </TR>
	  <TR>   
	   <TD COLSPAN="2" ALIGN="center"> <INPUT TYPE="submit" VALUE="등록하기">
	      <INPUT TYPE="reset" VALUE="취소하기"> 
       </TD>  
	  </TR> 
	</TABLE> 
  </FORM>
 </BODY> 
</html>
