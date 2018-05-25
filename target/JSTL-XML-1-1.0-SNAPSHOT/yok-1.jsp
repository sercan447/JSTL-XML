<%@page contentType="text/html" pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <fmt:requestEncoding value="UTF-8" />
    <fmt:setLocale value="tr_TR" />
    
    <c:import var="xmlbelgem1" url="sayma.xml" />
    <x:parse doc="${xmlbelgem1}" var="xmlbel2" />
    
    
    <x:out select="$xmlbel2/uyeler/uye/adi" /><br/>
    <x:out select="$xmlbel2/uyeler/uye/yasi"  /> <br/>
    
    <x:forEach var="n" select="$xmlbel2/uyeler/uye">
        <x:out select="$n/adi"/>  - 
        <x:out  select="$n/yasi" /> <br/>
    </x:forEach> <br/>
    
        <c:import var="olmuyor" url="http://www.google.com" />
        ${olmuyor}
       <br/>
       
       <c:import var="kimse" url="sayma.xml" />
       ${kimse}
</body>
</html>
