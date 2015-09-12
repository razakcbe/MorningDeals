<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>
</head>
<body>
	
		<table style="width: 100%; height: 100%" border="0">
			<tr>
				<td>
						<tiles:insertAttribute name="header" />
				</td>
			</tr>
			<tr>
				<td align="center" width="85%">
						<tiles:insertAttribute name="body" />
				</td>

			</tr>
			<tr>
				<td>
						<tiles:insertAttribute name="footer" />
				</td>
			</tr>

		</table>
	
</body>
</html>