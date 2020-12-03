# gunicorn configuration file for "hello" python application

pythonpath = '/home/box/web/'  # путь до приложения
bind = "0.0.0.0:8080"
workers = 4

# def app(environ, start_response):
#     start_response('200 OK', [('Content-Type', 'text/plain')])
#     return [bytes('\r\n'.join(environ['QUERY_STRING'].split('&')),
#                   encoding="utf8")]