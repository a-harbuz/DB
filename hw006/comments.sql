use music;

CREATE TABLE comments (
	id int primary key auto_increment,
    created_at timestamp default current_timestamp,
    track_id int not null,
    user_id int not null,
    comment text not null,
    
    foreign key (track_id) references tracks(id),
    foreign key (user_id) references users(id)
);

INSERT INTO comments (track_id, user_id, comment)
VALUES
	(1,1,"good song"),
    (2,2,"excellent. Das mag mir."),
    (3,2,"so-so"),
    (4,3,"nicht so schlecht!"),
    (3,3,"normal");

select track_id, COUNT(track_id) as count_comments 
from comments
GROUP BY track_id
ORDER BY count_comments ASC;
