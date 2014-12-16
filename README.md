# README #

You need to install docker, make and bower

## Docker ##

    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
    sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
    sudo apt-get update
    sudo apt-get install lxc-docker

## Bower ##

    sudo apt-get install npm
    sudo npm install -g bower

I needed to symlink it with

    sudo ln -s /usr/bin/nodejs /usr/bin/node


# After install #

Just do *make* and it should work.


# Job Stories #

* Display books in a list

**WHEN** a user a accesses the home page, **I WANT TO** redirect him to the books page, **SO THAT I CAN** show him a list of previously saved books.

* Import a file of book records, for example a CSV file

**WHEN** a user uploads a CSV file, **I WANT TO** import its content to my database, **SO THAT I CAN** show a list of books to the user.

* Make it possible to delete books from the list

**WHEN** a user clicks the delete button of a book, **I WANT TO** remove the book from the database, **SO THAT I CAN** show the list of books without the deleted book.

* Make it possible to sort by title or author

**WHEN** a user clicks the sort button, **I WANT TO** order all the books in my database, **SO THAT I CAN** show the user a ordered list of books.

* Make it possible to search for a book

**WHEN** a user searches for a book title, **I WANT TO** retrieve books from the database with that title, **SO THAT I CAN** show them to the user.

* Supporting CSV with texts in your mother tongue

**WHEN** a user uploads a CSV file with books in his mother tongue (characters different from UTF-8), **I WANT TO** import it to my database, **SO THAT I CAN** show its contents along with a list of previously saved books to the user.

* Supporting CSV with HTML inside

**WHEN** a user uploads a CSV file with HTML inside, **I WANT TO** import it to my database, **SO THAT I CAN** show its contents along with a list of previously saved books to the user.

