# uwsgi-python2

Based on [`docku/uwsgi`](https://github.com/docku/uwsgi), this is the layer you
want before your python2 application.

## Usage

Drop your uwsgi `<appname>.ini` configuration file in `/etc/uwsgi/`, and enable
it by `RUN`ning `systemctl enable uwsgi@<appname>.service` and `systemctl start
<appname>.service`.

### `<appname>.ini`

Should look something like this:

```
[uwsgi]
uwsgi-file=/srv/http/mc-voltaire-sh/run.py
chdir=/srv/http/mc-voltaire-sh/
module=app
virtualenv=/srv/http/mc-voltaire-sh/env
callable=app
plugin=python2
enable-threads=true
socket=/run/uwsgi/voltairemc.socket
uid = http
gid = http
```
