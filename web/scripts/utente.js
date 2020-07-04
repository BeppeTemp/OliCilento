

let params = new URLSearchParams(location.search);


let mail = params.get('email')
let passwd = params.get('password')

console.log(mail + " " + passwd)
