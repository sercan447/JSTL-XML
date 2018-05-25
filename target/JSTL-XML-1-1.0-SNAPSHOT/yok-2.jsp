<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page  errorPage="guru-error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
   
    
    <%
        int num = 10;
        
            if(num == 10){
              //  throw new RuntimeException("Kodladı bağardı");
               }
    %>
    <jsp:text>Yani olmuyor istesemde </jsp:text> <br/>
    <jsp:text>yaz güneşi gibiydin kışın ortasında bile</jsp:text> <br/>
    <jsp:text>Nerdesin neler yapıyor neler düşünüorsun</jsp:text> <br/>
    <br/>
    
    
    <jsp:element name="JAVAM">
        <jsp:attribute name="sayim">
            Niyazi
        </jsp:attribute>
        <jsp:body>
            Kışın ortasında bile
        </jsp:body>
    </jsp:element>
    
            
            
    <jsp:element name="SE">
        <jsp:attribute name="say">
            48
        </jsp:attribute>
        <jsp:body>
            Snow
        </jsp:body>
    </jsp:element>
           
            
    <c:set var="xmlText">
    <books>
        <book>
            <name>Padam History</name>  
            <author>ZARA</author>
            <price> 100 </price>
        </book>
        <book>
            <name>Great Mistory</name>
            <author>NUHA</author>
            <price>2000</price>
        </book>
    </books>
    </c:set> <br/> <br/> <br/>   

<x:parse var="ist" xml="${xmlText}" />
            
<x:out  select="$ist/books/book[1]/name" /> - 
<x:out select="$ist/books/book[1]/author" /> -
<x:out select="$ist/books/book[1]/price" /> <br/>

<x:out select="$ist/books/book[2]/name" /> - 
<x:out select="$ist/books/book[2]/author" /> - 
<x:out select="$ist/books/book[2]/price" /> <br/>

<c:set var="bulmaca">
    <dinler>
        <din>
            <ismi>Islam</ismi>
            <rakam>12</rakam>
        </din>
        <din>
            <ismi>Hristiyanlık</ismi>
            <rakam>58</rakam>
        </din>
        <din>
            <ismi>Yahudilik</ismi>
            <rakam>859</rakam>
        </din>
        <din>
            <ismi>Budizm</ismi>
            <rakam>887</rakam>
                
        </din>
    </dinler>
</c:set>

<x:parse var="Xmlzihin" xml="${bulmaca}" />

<x:set  var="fragment" select="$Xmlzihin//dinler"/>

<x:forEach var="das" select="$fragment/din">
 
        <x:if select="$das/rakam <= 60">
            <x:out  select="$das/ismi" /> -
        </x:if>
            <x:if select="$das/ismi = 'Budizm'">
                <x:out select="$das/ismi" /> - 
            </x:if>
   
</x:forEach> <br/>
<hr/>


<x:forEach var="petrus" select="$fragment/din">
    
    <x:choose>
        <x:when  select="$petrus/ismi = 'Islam'">
            <x:out select="$petrus/rakam" /> -
        </x:when>  
   
                 
        <x:otherwise>
            <c:out value="YOK BRO" /> <br/>
        </x:otherwise>
     
    </x:choose>
</x:forEach>
<br/>

            <%
                out.println(config.getServletName());
                out.println(application.getContextPath());
               
          %>
<br/><br/>
          <%
          
            pageContext.setAttribute("student", "gurular ne ocak",pageContext.PAGE_SCOPE);
            String veri1 = (String)pageContext.getAttribute("student");
            out.println("pagecontext :"+veri1);

          %>
          <br/> 
          <% out.println(page.toString()); %>
          
          <%
              int at[] = {1,2,3,4};
            //  out.println(at[5]);
              %>
              
              <%= exception %>
          <br/> <br/>
          
          
</body>
</html>
