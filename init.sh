sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo gunicorn -w 4 /home/box/web/etc/hello:app
gunicorn -w 2 -c /home/box/web/etc/hello.py hello:app
#cd /home/box/web/etc sudo gunicorn - b 0.0.0.0:8080 hello:app