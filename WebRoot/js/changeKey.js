var inputs = document.getElementById("mm").getElementsByTagName("input");
function keyDown(event) {
	var focus = document.activeElement;
	if (!document.getElementById("mm").contains(focus))
		return;
	var event = window.event || event;
	var key = event.keyCode;
	for (var i = 0; i < inputs.length; i++) {
		if (inputs[i] === focus){
			break;
		}
	}
	switch (key) {
	case 37:
		if (i > 0){
			inputs[i - 1].focus();
		}
		break;
	case 38:
		if (i - 6 >= 0){
			inputs[i - 6].focus();
		}
		break;
	case 39:
		if (i < inputs.length - 1){
			inputs[i + 1].focus();
		}
		break;
	case 40:
		if (i + 6 < inputs.length){
			inputs[i + 6].focus();
		}
		break;
	}
}