CREATE DATABASE IF NOT EXISTS blog;
USE blog;

CREATE TABLE IF NOT EXISTS users (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  email varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  img varchar(255) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS posts (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(255) NOT NULL,
  `desc` mediumtext NOT NULL,
  img varchar(255) NOT NULL,
  cat varchar(45) DEFAULT NULL,
  date datetime DEFAULT NULL,
  uid int(11) NOT NULL,
  PRIMARY KEY (id),
  KEY uid_idx (uid),
  CONSTRAINT uid FOREIGN KEY (uid) REFERENCES users (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
