sudo ln -sf /home/box/Web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn -w 2 -c /home/box/Web/hello.py hello:app
gunicorn -w 2 -c /home/box/Web/guicorn.py ask.wsgi:application