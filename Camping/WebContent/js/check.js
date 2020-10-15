/**
 * 
 */

function validate() {

			var custno = document.getElementById("custno");
			var custname = document.getElementById("custname");
			var phone = document.getElementById("phone");
			var address = document.getElementById("address");
			var joindate = document.getElementById("joindate");
			var grade = document.getElementById("grade");
			var city = document.getElementById("city");

			if (join.custno.value == "") {
				alert("회원번호를 입력해주세요");
				custno.focus();
				return false;
			}
			if (join.custname.value == "") {
				alert("이름을 입력해 주세요");
				join.custname.focus();
				return false;
			}
			if (join.phone.value == "") {
				alert("전화번호를 입력해 주세요");
				join.phone.focus();
				return false;
			}

			if (join.address.value == "") {
				alert("주소를 입력해 주세요");
				join.address.focus();
				return false;
			}
			if (join.joindate.value == "") {
				alert("날짜를 입력해 주세요");
				join.joindate.focus();
				return false;
			}
			if (join.grade.value == "") {
				alert("등급을 입력해 주세요");
				join.grade.focus();
				return false;
			}
			if (join.city.value == "") {
				alert("도시번호를 입력해 주세요");
				join.city.focus();
				return false;
			}
			
			alert("등록되었습니다");

		}