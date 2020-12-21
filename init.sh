sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn -w 2 -c /home/box/web/hello.py hello:app
gunicorn -w 2 -c /home/box/web/guicorn.py ask.ask.wsgi:application