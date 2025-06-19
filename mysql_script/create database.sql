use springbootsocialmedia;
Create table users(
 userID varchar(40) NOT Null PRIMARY KEY,
 userPassword varchar(50) NOT NULL,
 email varchar(50) NOT NULL
);
Create table post(
 postID varchar(40) NOT Null PRIMARY KEY,
 userID varchar(40)  NOT NULL,
 postPic varchar(100),
 postComment text,
 postCreateTime datetime not null DEFAULT CURRENT_TIMESTAMP,
 Foreign key (userID) references users(userID)
);

Create table post_like(
 postID varchar(40) NOT Null,
 userID varchar(40)  NOT NULL,
 postLikeTime datetime not null DEFAULT CURRENT_TIMESTAMP,
 Foreign key (userID) references users(userID),
 Foreign key (postID) references post(postID),
 PRIMARY KEY(postID,userID)
);

Create table tag(
 tagID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
 tagContent varchar(40)  NOT NULL
);


CREATE TABLE post_tag (
    postID VARCHAR(40) NOT NULL,
    tagID INT NOT NULL,
    FOREIGN KEY (tagID) REFERENCES tag(tagID),
    FOREIGN KEY (postID) REFERENCES post(postID),
    PRIMARY KEY(postID, tagID)
);


Create table Comments(
 commentID varchar(40) NOT Null PRIMARY KEY,
 postID varchar(40)  NOT NULL,
 userID varchar(40)  NOT NULL,
 Comments text,
 commentCreateTime datetime not null DEFAULT CURRENT_TIMESTAMP,
 Foreign key (userID) references users(userID),
 Foreign key (postID) references post(postID)
);


Insert into users (UserID,UserPassword,Email) 
values ("root","root","root@root");

