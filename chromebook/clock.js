	function ShowTime(){
                var Local	= new Date(); // Local Time
		var GMT		= Local.getTime() + (Local.getTimezoneOffset() * 60000); // Get GMT Time
		var Now		= new Date(GMT); // Now in GMT Time
		var Hours	= Now.getHours();
		var Minutes	= Now.getMinutes();
		var Seconds	= Now.getSeconds();
		var Year	= Now.getUTCFullYear();
		var Month	= Now.getMonth() + 1; // return 0-11
		var Day		= Now.getDate();

		var Time  = Year;
                Time += ((Month   < 10) ? ".0" : ".") + Month;
                Time += ((Day     < 10) ? ".0" : ".") + Day;
                Time += ((Hours   < 10) ? " 0" : " ") + Hours;
		Time += ((Minutes < 10) ? ":0" : ":") + Minutes;
		Time += ((Seconds < 10) ? ":0" : ":") + Seconds;
                Time += " GMT";
		document.getElementById("time").innerHTML = Time;
		setTimeout("ShowTime()", 1000);
	}

	ShowTime();
