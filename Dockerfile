FROM docku/uwsgi
MAINTAINER Jon Chen <bsd@voltaire.sh>
RUN pacman -Syu --noconfirm --needed uwsgi-plugin-python2
