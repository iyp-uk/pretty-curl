# Pretty curl

Wraps `curl` requests.

Follows redirects, pretty print JSON responses.

## Dependencies

Requires [jsontools](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/jsontools) and pigmentize.

## Source it!

Source it before use, you would surely want to add it to your `.basrc` or `.zshrc` or whatever profile you use.

```console
$ source pretty-curl.sh
pretty-curl () {
	...
}
```

## Examples

```console
$ pretty-curl google.com         
HTTP/1.1 302 Found
Cache-Control: private
Content-Type: text/html; charset=UTF-8
Referrer-Policy: no-referrer
Location: http://www.google.co.uk/?gfe_rd=cr&dcr=0&ei=jBEcWqbeE6aW8QfXmJC4CA
Content-Length: 271
Date: Mon, 27 Nov 2017 13:22:20 GMT

HTTP/1.1 200 OK
Date: Mon, 27 Nov 2017 13:22:20 GMT
Expires: -1
Cache-Control: private, max-age=0
Content-Type: text/html; charset=ISO-8859-1
P3P: CP="This is not a P3P policy! See g.co/p3phelp for more info."
Server: gws
X-XSS-Protection: 1; mode=block
X-Frame-Options: SAMEORIGIN
Set-Cookie: 1P_JAR=2017-11-27-13; expires=Wed, 27-Dec-2017 13:22:20 GMT; path=/; domain=.google.co.uk
Set-Cookie: NID=118=oi3AkMgYNzypJhyiufuAQMa6V1is-wxADbsvhvPT9NoVDzOzAMQk7vaq2OVi_0vZvC5pRYI26Y2uaSxCiuxhed8Z9JO2hdIn4xcTZp_-Pwm0xVWFgT7bcsvZfY-yRs3i; expires=Tue, 29-May-2018 13:22:20 GMT; path=/; domain=.google.co.uk; HttpOnly
Accept-Ranges: none
Vary: Accept-Encoding
Transfer-Encoding: chunked

... HTML response ...
```

```console
$ pretty-curl httpbin.org/headers
HTTP/1.1 200 OK
Connection: keep-alive
Server: meinheld/0.6.1
Date: Mon, 27 Nov 2017 13:22:00 GMT
Content-Type: application/json
Access-Control-Allow-Origin: *
Access-Control-Allow-Credentials: true
X-Powered-By: Flask
X-Processed-Time: 0.00217294692993
Content-Length: 133
Via: 1.1 vegur

{
    "headers": {
        "Accept": "*/*",
        "Connection": "close",
        "Host": "httpbin.org",
        "User-Agent": "curl/7.54.0"
    }
}
```

