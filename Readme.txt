Exports your user-accessable Safari/WebKit cookies in "netscape-compatible" cookies.txt format.
Facilitates easy usage of your session cookies with tools like wget.

Example:
	GetSafariCookies | wget --user=myuser --password=mypass --load-cookies=/dev/stdin https://host.com/login/path