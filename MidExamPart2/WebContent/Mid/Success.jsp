<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>成功${way}</title>
<style>
form {
	margin: 0 auto;
	width: 600px;
}
</style>

</head>
<body bgcolor='yellow'>
	<form action="stu.do" method="POST">
		<table border="3" bgcolor='#CCEEFF'>
			<thead>
				<tr>
					<th height="60" colspan="3" align="center">成功${way}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width="120" height="40">編號</td>
					<td width="600" height="40" align="left">${MidBean.num}
				</tr>
				<tr>
					<td width="120" height="40">日期</td>
					<td width="600" height="40" align="left">${MidBean.datelist}
				</tr>
				<tr>
					<td width="120" height="40">學年度</td>
					<td width="600" height="40" align="left">${MidBean.yearlist}
				</tr>
				<tr>
					<td width="120" height="40">學生族群</td>
					<td width="600" height="40" align="left">${MidBean.category}
				</tr>
				<tr>
					<td width="120" height="40">學位</td>
					<td width="600" height="40" align="left">${MidBean.duration}
				</tr>
				<tr>
					<td width="120" height="40">離開人口</td>
					<td width="600" height="40" align="left">${MidBean.leavePopulation}
				</tr>
				<tr>
					<td width="120" height="40">生病人數</td>
					<td width="600" height="40" align="left">${MidBean.sick}
				</tr>
				

			</tbody>
		</table>
	</form>

</body>
</html>