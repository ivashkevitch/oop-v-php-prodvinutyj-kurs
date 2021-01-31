SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `articles` (
                            `id` int(11) NOT NULL,
                            `author_id` int(11) NOT NULL,
                            `name` varchar(255) NOT NULL,
                            `text` text NOT NULL,
                            `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `articles` (`id`, `author_id`, `name`, `text`, `created_at`) VALUES
(1, 1, 'Статья о том, как я погулял', 'Шёл я значит по тротуару, как вдруг...', '2021-01-31 18:52:51'),
(2, 1, 'Пост о жизни', 'Сидел я тут на кухне с друганом и тут он задал такой вопрос...', '2021-01-31 18:52:51');

CREATE TABLE `users` (
                         `id` int(11) NOT NULL,
                         `nickname` varchar(128) NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
                         `role` enum('admin','user') NOT NULL,
                         `password_hash` varchar(255) NOT NULL,
                         `auth_token` varchar(255) NOT NULL,
                         `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `nickname`, `email`, `is_confirmed`, `role`, `password_hash`, `auth_token`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', 1, 'admin', 'hash1', 'token1', '2021-01-31 18:52:29'),
(2, 'user', 'user@gmail.com', 1, 'user', 'hash2', 'token2', '2021-01-31 18:52:29');


ALTER TABLE `articles`
    ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nickname` (`nickname`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `articles`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `users`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
