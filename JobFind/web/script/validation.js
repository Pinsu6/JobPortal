
function validateform() {
var name =
        document.myform.Fname.value;
        var lname =
        document.myform.Lname.value;
        var email =
        document.myform.Email.value;
        var password =
        document.myform.password.value;
        var regEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g; //Javascript reGex for Email Validation.
        var regPhone = /^\d{10}$/; // Javascript reGex for Phone Number validation.
        var regName = /\d+$/g; // Javascript reGex for Name validation

        if (name == "" || regName.test(name)) {
alert("Please enter your name properly.");
        return false;
}

if (lname == "" || regName.test(lname)) {
alert("Please enter your name properly.");
        return false;
}



if (email == "" || !regEmail.test(email)) {
alert("Please enter a valid e-mail address.");
        return false;
}

if (password == "") {
alert("Please enter your password");
        return false;
}

if (password.length < 6) {
alert("Password should be atleast 6 character long");
        return false;
}





}

