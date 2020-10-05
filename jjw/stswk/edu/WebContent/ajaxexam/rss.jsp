<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<c:catch var="err">
	<c:import var="weater"
			url="http://www.kma.go.kr/wid/queryDFSRSS.jsp?zon=1168064000">
</c:import>
<!-- 파싱하기 -->
<x:parse varDom="wrss" xml="${weather}"></x:parse>
<x:out select="$wrss/rss/channel/title"></x:out><br/>
<table>
	<tr>
		<th colspan="2" >현재날씨</th>
	</tr>
	<tr>
		<td>기준시간</td>
		<td>
			<x:out select="$wrss/rss/channel/pubData"/>
		</td>
	</tr>
	<tr>
		<td>기운</td>
		<td>
			<x:out select="$wrss/rss/channel/item/description/body/data/temp"/>
		</td>
	</tr>
	<tr>
		<td>습도 </td>
		<td>
			<x:out select="$wrss/rss/channel/item/description/body/data/reh"/>%
		</td>
	</tr>
	<tr>
		<td>강수확률 </td>
		<td>
			<x:out select="$wrss/rss/channel/item/description/body/data/pop"/>%
		</td>
	</tr>
</table>
</c:catch>
<c:if test="${err!=null}">
	${err}
</c:if>