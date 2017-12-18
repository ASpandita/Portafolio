var XHR = function() {
    var _xhr = new Object();
    var _response = "";
    var _url = "";
    var _method = "post";
    var _modo = true; //true es asíncrono, false es síncrono
    var _callBackFunct = new Function("");

    this.setURL = function(url) {
        _url = url;
    }
    this.setMethod = function(method) {
        _method = method;
    }
    this.setAsynchMode = function(flag) {
        _mode = flag;
    }
    this.send = function(value) {
        if (window.XMLHttpRequest) {
            _xhr = new XMLHttpRequest();
        } else {
            if (window.ActiveXObject)
                _xhr = new ActiveXObject("Microsoft.XMLHTTP");
            else
                alert("Consiga otro browser")

        }
        _xhr.onreadystatechange = stateChange;
        _xhr.open(_method, _url, _modo);
        _xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        _xhr.send(value);
    };

    var stateChange = function() {
        try {
            if (_xhr.readyState == 4) {
                if (_xhr.status == 200) {
                    _response = _xhr.responseText;
                    _callBackFunct();
                }
            }
        } catch (e) {
            alert(e);
        }
    };

    this.setCallBackFunct = function(funct) {
        _callBackFunct = new Function(funct);
    }

    this.getResponse = function() {
        return _response;
    }
}