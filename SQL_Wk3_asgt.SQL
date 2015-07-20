/*Show all videos with the number of "likes" in descending order*/
SELECT DISTINCT clip.id, review.likes, * 
FROM clip INNER JOIN review   
ON clip.id = review.id
Order BY review.likes desc

