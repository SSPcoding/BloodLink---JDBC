const form = document.getElementById('formsignup');
const username = document.getElementById('name');
const email = document.getElementById('email');
const password = document.getElementById('password');
var x;
form.addEventListener('submit', e => {
	
    if(validateInputs()==false)
    	e.preventDefault();
});

const setError = (element, message) => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector('.error');

    errorDisplay.innerText = message;
    inputControl.classList.add('error');
    inputControl.classList.remove('success');
}

const setSuccess = element => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector('.error');

    errorDisplay.innerText = '';
    inputControl.classList.add('success');
    inputControl.classList.remove('error');
};

const isValidEmail = email => {
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}

var validateInputs = () => {
    const usernameValue = username.value.trim();
    const emailValue = email.value.trim();
    const passwordValue = password.value.trim();

    if(usernameValue === '') {
        setError(username, 'Username is required');
        x=0;
    } else {
        setSuccess(username);
        x=1;
    }

    if(emailValue === '') {
        setError(email, 'Email is required');
        x-0;
    } else if (!isValidEmail(emailValue)) {
        setError(email, 'Provide a valid email address');
        x=0;
    } else {
        setSuccess(email);
        x=1;
    }

    if(passwordValue === '') {
        setError(password, 'Password is required');
        x=0;
    } else if (passwordValue.length < 8 ) {
        setError(password, 'Password must be at least 8 character.');
        x=0;
    } else {
        setSuccess(password);
        x=1
    }
    
    if(x==1){
    	return true;
    	}
    else{
    	return false;
    	}

};
