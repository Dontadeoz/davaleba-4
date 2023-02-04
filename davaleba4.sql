CREATE TABLE `university` (
  `uzer_name` int,
  `lechurer_id` int,
  `faculty_id` int
);

CREATE TABLE `student` (
  `id` integer,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `gender` varchar(255),
  `p_n` int,
  `email` varchar(255),
  `birthday` date,
  `address_id` varchar(255),
  `faculty_id` varchar(255)
);

CREATE TABLE `address` (
  `id` int,
  `address` varchar(255),
  `flat_number` int
);

CREATE TABLE `faculty` (
  `id` int,
  `name` varchar(255),
  `subject_id` varchar(255)
);

CREATE TABLE `subject` (
  `id` int,
  `name` varchar(255),
  `step` int,
  `lechurer_id` int
);

CREATE TABLE `lechurer` (
  `id` int,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `gender` varchar(255),
  `p_n` int,
  `email` varchar(255),
  `birthday` date,
  `degree` varchar(255),
  `address_id` int,
  `subject_id` int
);

ALTER TABLE `lechurer` ADD FOREIGN KEY (`id`) REFERENCES `university` (`lechurer_id`);

ALTER TABLE `faculty` ADD FOREIGN KEY (`id`) REFERENCES `university` (`faculty_id`);

ALTER TABLE `subject` ADD FOREIGN KEY (`id`) REFERENCES `lechurer` (`subject_id`);

ALTER TABLE `address` ADD FOREIGN KEY (`id`) REFERENCES `lechurer` (`address_id`);

ALTER TABLE `faculty` ADD FOREIGN KEY (`id`) REFERENCES `student` (`faculty_id`);

ALTER TABLE `subject` ADD FOREIGN KEY (`id`) REFERENCES `faculty` (`subject_id`);

ALTER TABLE `address` ADD FOREIGN KEY (`id`) REFERENCES `student` (`address_id`);
