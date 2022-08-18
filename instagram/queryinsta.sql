# SELECT * from users order by created_at LIMIT 5;

# SELECT count(dayname(created_at)) as total,dayname(created_at) as day from users
# GROUP by dayname(created_at) 
# order by total 
# DESC LIMIT 1;

# SELECT username,image_url from users
# left join photos
# on users.id=photos.user_id 
# WHERE image_url is null ;


# SELECT photos.id,image_url,count(*) as total,username as total from photos
# join likes 
# on likes.photo_id=photos.id
# join users
# on photos.user_id=users.id
# GROUP by image_url 
# ORDER by total DESC LIMIT 1;



# select (SELECT count(*) from photos)/(SELECT count(*) from users) as avg;


# select tag_name,count(*) as total from tags
# join photo_tags
# on photo_tags.tag_id=tags.id
# GROUP by id
# ORDER by total DESC LIMIT 2;


# SELECT username, 
#        Count(*) AS num_likes 
# FROM   users 
#        INNER JOIN likes 
#                ON users.id = likes.user_id 
# GROUP  BY likes.user_id
# HAVING num_likes=(select count(*) from photos);