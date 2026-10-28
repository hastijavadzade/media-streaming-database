 CREATE TABLE "User" (
	user_id int NOT NULL PRIMARY KEY,
	name character varying(40) NOT NULL,
	email character varying(40) NOT NULL
);
CREATE TABLE "Payment" (
	payment_id int NOT NULL PRIMARY KEY,
	payment_date Date NOT NULL,
	amount Decimal(10,2) NOT NULL,
	method character varying(40) NOT NULL,
    user_id int,
    FOREIGN KEY (user_id) REFERENCES "User"
);
CREATE TABLE Subscription_Tier (
    name character varying(40) NOT NULL PRIMARY KEY,
    price Decimal(10,2) NOT NULL,
    description character varying(100)
);
CREATE TABLE "Subscription" (
    sub_id int NOT NULL PRIMARY KEY,
    sub_sdate Date NOT NULL,
    sub_edate Date NOT NULL,
    user_id int,
    tier_name character varying(40),
    FOREIGN KEY (user_id) REFERENCES "User",
    FOREIGN KEY (tier_name) REFERENCES Subscription_Tier
);
CREATE TABLE Production_Company (
    company_id int NOT NULL PRIMARY KEY,
    name character varying(40),
    year_of_establishment int,
    phone_number character varying(24),
    email character varying(40)
);
CREATE TABLE Storage_Location (
    storage_id int NOT NULL PRIMARY KEY,
    storage_server character varying(225),
    storage_path character varying(225)
);
CREATE TABLE Director (
    director_id int NOT NULL PRIMARY KEY,
    name character varying(40),
    biography text
);
CREATE TABLE Producer (
    producer_id int NOT NULL PRIMARY KEY,
    name character varying(40),
    phone_number character varying(24),
    email character varying(40)
);
CREATE TABLE Actor (
    actor_id int NOT NULL PRIMARY KEY,
    name character varying(40),
    biography text
);
CREATE TABLE Media (
    media_id int NOT NULL PRIMARY KEY,
    title character varying(225),
    production_year character varying(40),
    genre character varying(225),
    average_rating Decimal(10,2),
    director_id int ,
    company_id int ,
    FOREIGN KEY (director_id) REFERENCES Director,
    FOREIGN KEY (company_id) REFERENCES Production_Company
);
CREATE TABLE Movie (
    movie_id int NOT NULL PRIMARY KEY,
    duration int, -- (in minutes)
    storage_id int UNIQUE, 
    FOREIGN KEY (movie_id) REFERENCES Media,
    FOREIGN KEY (storage_id) REFERENCES Storage_Location

);
CREATE TABLE Series (
    series_id int NOT NULL PRIMARY KEY,
    number_of_seasons int,
    number_of_episodes int,
    episodes_average_duration int, -- (in minutes)
    FOREIGN KEY (series_id) REFERENCES Media
);
CREATE TABLE Episode (
    series_id int NOT NULL,
    season_no int NOT NULL,
    episode_no int NOT NULL,
    title character varying(225),
    duration int, -- (in minutes)
    storage_id int UNIQUE,
    PRIMARY KEY (series_id, season_no, episode_no),
    FOREIGN KEY (series_id) REFERENCES Series,
    FOREIGN KEY (storage_id) REFERENCES Storage_Location
);
CREATE TABLE Media_Producer (
    media_id int NOT NULL,
    producer_id int NOT NULL,
    role character varying(225),
    contract_sdate Date,
    contract_edate Date,
    budget Decimal(10,2),
    PRIMARY KEY (media_id, producer_id),
    FOREIGN KEY (media_id) REFERENCES Media,
    FOREIGN KEY (producer_id) REFERENCES Producer
);
CREATE TABLE Media_Actor (
    media_id int NOT NULL,
    actor_id int NOT NULL,
    role character varying(225),
    contract_sdate Date,
    contract_edate Date,
    salary Decimal(10,2),
    PRIMARY KEY (media_id, actor_id),
    FOREIGN KEY (media_id) REFERENCES Media,
    FOREIGN KEY (actor_id) REFERENCES Actor
);
CREATE TABLE "Rating" (
    user_id int NOT NULL,
    media_id int NOT NULL,
    score int,
    PRIMARY KEY (media_id, user_id),
    FOREIGN KEY (media_id) REFERENCES Media,
    FOREIGN KEY (user_id) REFERENCES "User"
);
CREATE TABLE Watch_List (
    user_id int NOT NULL,
    media_id int NOT NULL,
    added_date Date,
    PRIMARY KEY (media_id, user_id),
    FOREIGN KEY (media_id) REFERENCES Media,
    FOREIGN KEY (user_id) REFERENCES "User"
);
CREATE TABLE "Comment" (
    comment_id int NOT NULL PRIMARY KEY,
    comment_text text,
    comment_date Date,
    user_id int,
    media_id int,
    FOREIGN KEY (media_id) REFERENCES Media,
    FOREIGN KEY (user_id) REFERENCES "User"
);
