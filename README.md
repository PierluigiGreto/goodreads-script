# GoodReads Script

This script use the goodreads API to create a file README.md that show all the book you have read (like this: link).

## Requirements

- Ruby 1.9.3+
- [goodreads](https://github.com/sosedoff/goodreads)

## Configuration
Create the config.yaml like this:
```
config:
 api_key: XXXXXXX   #Your goodreads api key
 api_secret: XXXXXX #Your goodreads api secret
 user_id: 00000     #Your goodreads user id (your profile must be public)
 shelf: read        #The shelf that you want to list 

```

## Use
Execute the command:
```
ruby goodreads.rb
```
The script will create a file README.md to add to your repository.
