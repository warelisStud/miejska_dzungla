UPDATE `product`
SET `image` = CONCAT('plants_photos/', LOWER(REPLACE(`model`, ' ', '_')), '.jpg')
WHERE `image` IS NULL;