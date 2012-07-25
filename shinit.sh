function serve() {
	if __serve_command_exists python
	then
	    python -m SimpleHTTPServer
	elif __serve_command_exists python3
	then
		python3 -m http.server 8080
	elif __serve_command_exists php
	then
		php -S localhost:8080
	else
		echo "Sorry, seems like you don't have Python or PHP installed anywhere."
	fi
}

function __serve_command_exists() {
    type "$1" &> /dev/null ;
}