<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<ul id="main_menu" class="nav navbar-nav sidenav main_menu">
<li class="menu">
   <a href="#">프로젝트</a>
   <ul class="snd_menu sub_menu nav">
      <li class="submenu_2">
             <a href="#">기본 정보</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/basic_info_insert">*등록</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">진척 관리</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/progress_insert">*등록</a>
                </li>
                <li>
                   <a href="/project/progress_list">*리스트</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">인력 관리</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/org_insert">*등록</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">일정 관리</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/schedule_insert">*등록</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">리스크 관리</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/risk_insert">*등록</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">품질 관리</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/quality_insert">*등록</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">의사소통 관리</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/communication">*등록</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">모바일</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/mobile_insert">*등록</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">산출물 관리</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/outputs_list">목록</a>
                </li>
             </ul>
      </li>
      <li  class="submenu_2">
             <a href="#">사업 관리</a>
             <ul class="trd_menu sub_menu nav">
                <li>
                   <a href="/project/business_list">목록</a>
                </li>
             </ul>
      </li>
   </ul>
</li>
</ul>
<script type="text/javascript">
$(document).ready(function(){
	  
	  //메뉴 슬라이드
	  $('#main_menu > li > a').click(function(){
	    $(this).next($('.snd_menu')).slideToggle('fast');
	  });
	  $('.snd_menu > li > a').click(function(e){
	    e.stopPropagation();
	    $(this).next($('.trd_menu')).slideToggle('fast');
	  });
	  
	  // 버튼 클릭 시 스타일 변경
	  $('li > a').focus(function(){
	    $(this).addClass('selec');
	  });
	  $("li > a").blur(function(){
	    $(this).removeClass('selec');
	  });
	  
	})
</script>
