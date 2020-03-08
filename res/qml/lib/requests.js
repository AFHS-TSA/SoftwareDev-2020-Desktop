const get = (url, callback) => {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = (function(myxhr) {
        return function() {
            callback(myxhr);
        }
    })(xhr);
    xhr.open('GET', url, true);
    xhr.send('');
}

const post = (url, payload, callback) => {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = (function(myxhr) {
        return function() {
            callback(myxhr);
        }
    })(xhr);
    xhr.open('POST', url, true);
    xhr.send(payload);
}
