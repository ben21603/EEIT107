<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
form {
	margin: 0 auto;
	width: 600px;
}

.span {
	font-size: 20px;
	color: red;
}
</style>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("idDate").addEventListener("blur", blurDate); //事件繫結，焦點離開
		document.getElementById("idDate").addEventListener("focus", focusDate);
	});

	function blurDate() {
		// 	alert("注意格式1");
		chkDate();
	}

	function chkDate() {
		// 	alert("注意格式2");
		let theDate = document.getElementById("idDate").value;
		let DateChar = theDate.split("-");
		year = DateChar[0] * 1;
		month = DateChar[1] * 1;
		date = DateChar[2] * 1;

		let re = /^[0-9]{4}\-[0-9]{2}\-[0-9]{2}$/
		let text = theDate.charAt(4)
		let text1 = theDate.charAt(7)

		console.log(re);
		console.log(theDate);
		console.log(re.test(theDate));
		if ((theDate == "")) {
			alert("不可為空");
			//       document.getElementById("idspDate").innerHTML =
			//         "<img src=Images/error.png >日期不可為空";

		} else if (re.test(theDate)) {
			//     	 alert("在這裡1");
			var timeMachine = new Date();
			timeMachine.setFullYear(year);
			timeMachine.setMonth(month - 1); //記住,月份是從0開始計數的
			timeMachine.setDate(date);
			//       alert(date);

			var trueYear = timeMachine.getFullYear();
			var trueMonth = timeMachine.getMonth() + 1; //記住,月份是從0開始計數的
			var trueDate = timeMachine.getDate();
			//       alert(trueDate);
			if (trueYear == year && trueMonth == month && trueDate == date) {
				//     	  alert("格式正確");
				//         document.getElementById("idspDate").innerHTML =
				//           "<img src=Images/error.png >輸入日期有誤";
			} else {
				//         document.getElementById("idspDate").innerHTML =
				alert("沒有這個日期");
			}
		} else {
			alert("格式錯誤");
			//       document.getElementById("idspDate").innerHTML =
			//         "格式錯誤";

		}
	} //end of fundate
</script>
</head>
<body bgcolor='black'>
	<form action="stu.do" method="POST">
		<table border="3" bgcolor='#CCEEFF'>
			<thead>
				<tr>
					<th height="60" colspan="3" align="center">原住民大專以上休學原因</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width="120" height="40">編號</td>
					<td width="600" height="40" align="left"><input name="mNum"
						type="text" size="14" value="${param.mNum}" placeholder="新增不需輸入">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.numInsert}${ErrorMsg.num}</div>
				</tr>
				<tr>
					<td width="120" height="40">日期</td>
					<td width="600" height="40" align="left"><input
						name="mDatelist" type="text" id="idDate" size="14"
						value="${param.mDatelist}" placeholder="西元年-月份-日期"> <span
						id="idspDate"></span>
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.dlist}</div>
				</tr>
				<tr>
					<td width="120" height="40">學年度</td>
					<td width="600" height="40" align="left"><input
						name="mYearlist" type="text" size="14" value="${param.mYearlist}">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.yearlist}</div>
				</tr>
				<tr>
					<td width="120" height="40">學生族群</td>
					<td width="600" height="40" align="left"><input
						name="mCategory" type="text" size="14" value="${param.mCategory}">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.category}</div>
				</tr>
				<tr>
					<td width="120" height="40">學位</td>
					<td width="600" height="40" align="left"><input
						name="mDuration" type="text" size="14" value="${param.mDuration}">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.duration}</div>
				</tr>
				<tr>
					<td width="120" height="40">離開人口</td>
					<td width="600" height="40" align="left"><input
						name="mLeavePopulation" type="text" size="14"
						value="${param.mLeavePopulation}">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.leavePopulation}</div>
				</tr>
				<tr>
					<td width="120" height="40">生病人數</td>
					<td width="600" height="40" align="left"><input name="mSick"
						type="text" size="14" value="${param.mSick}">
						<div style="color: #FF0000; font-size: 60%; display: inline">${ErrorMsg.sick}</div>
				</tr>
				<tr>
					<td height="50" colspan="3" align="center"><input
						type="submit" value="新增" name="submit"> <input
						type="submit" value="修改" name="submit"> <input
						type="submit" value="刪除" name="submit"> <input
						type="submit" value="查詢" name="submit"></td>
				</tr>

			</tbody>
		</table>
	</form>

</body>
</html>