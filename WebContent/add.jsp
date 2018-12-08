<%@page import="com.example.guestbook.dao.GuestbookDao"%>
<%@page import="com.example.guestbook.vo.GuestbookVo"%>
<%
	request.setCharacterEncoding( "utf-8" );

	String name = request.getParameter( "name" );
	String password = request.getParameter( "pass" );
	String content = request.getParameter( "content" );
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName( name );
	vo.setPassword( password );
	vo.setContent( content );
	
	new GuestbookDao().insert( vo );
	
	response.sendRedirect( request.getContextPath() );
%> 
