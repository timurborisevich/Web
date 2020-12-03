def app(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    return [bytes('\r\n'.join(environ['QUERY_STRING'].split('&')),
                  encoding="utf8")]

# bind = "0.0.0.0:8080"
