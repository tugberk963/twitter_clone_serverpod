--
-- Class Post as table posts
--

CREATE TABLE "posts" (
  "id" serial,
  "caption" text NOT NULL,
  "imgUrl" text NOT NULL,
  "type" integer NOT NULL,
  "audience" integer NOT NULL,
  "reply" integer NOT NULL,
  "userId" integer NOT NULL,
  "username" text NOT NULL,
  "profilePicUrl" text NOT NULL
);

ALTER TABLE ONLY "posts"
  ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Class User as table users
--

CREATE TABLE "users" (
  "id" serial,
  "email" text NOT NULL,
  "username" text NOT NULL,
  "handle" text NOT NULL,
  "bio" text NOT NULL,
  "profilePicUrl" text NOT NULL,
  "bgPicUrl" text NOT NULL,
  "followerCount" integer NOT NULL,
  "followingCount" integer NOT NULL
);

ALTER TABLE ONLY "users"
  ADD CONSTRAINT users_pkey PRIMARY KEY (id);


