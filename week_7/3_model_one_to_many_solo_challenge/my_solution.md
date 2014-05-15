# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
user_name, name, picture, location, website

## Release 1: Tweet Fields
message, picture, date, location

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
one-to-many because a user can have many tweets but each tweet only belongs to one user 

## Release 3: Schema Design
![twitter](https://raw.githubusercontent.com/lienha/phase_0_unit_3/master/week_7/imgs/twitter.jpg)

## Release 4: SQL Statements
select tweets from a specific user
```
SELECT message 
FROM tweets
WHERE user_id = [a user]
```
tweets from a user made after last Wednesday
```
SELECT message
FROM tweets
WHERE user_id = [a user]
AND created_at > '2014-05-14'
```

all tweets from a given user's twitter handle
```
SELECT message 
FROM tweets
JOIN users 
    ON (user_id = id)
WHERE user_name = [user's twitter handle]
```

get twitter handle associated with a given tweet id
```
SELECT user_name
FROM tweets 
JOIN users
    ON (user_id = id)
WHERE id = [a user]
```
## Release 5: Reflection
This exercise is confusing as I'm still inexperienced with SQL and I'm not much of a Twitter user.