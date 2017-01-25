\c matthewtirrell

DROP USER IF EXISTS "has_many_user";
DROP DATABASE IF EXISTS "has_many_blogs";
CREATE USER "has_many_user";
CREATE DATABASE "has_many_blogs" WITH OWNER "has_many_user";

\c has_many_blogs;

DROP TABLE IF EXISTS "user";
--CREATE TABLE "user"