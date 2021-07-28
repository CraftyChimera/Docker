# Docker
the docker-compose file is inside sql directory
mysql root password is 'hi'

The mysql read-only user's username is Jay and Jay's password is 'yo'

The ubuntu container is named as 'serv',the sql container is named as 'data' and the phpmyadmin container is named as 'view'

To access phpmyadmin,use "http://localhost:8080"

"getmom" command on serv gets all moms if no argument is specified. It gets moms from x till the last mom if only one argument x is specified.
It gets moms between 2 dates x and y if 2 arguments are specified.

"attendance" command on serv gets absentee student list from the very beginning till today if no argument is specified. It gets absentee student list with dates from date x till today if only one argument x is specified. It gets absentee student list with dates from date x till date y(both inclusive) if 2 arguments x and y are specified

all other scripts-genuser,permit,schedule and genmom are applied automatically when starting the container
