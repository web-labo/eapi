create table migrations
(
  id        int unsigned auto_increment
    primary key,
  migration varchar(191) not null,
  batch     int          not null
)
  collate = utf8mb4_unicode_ci;

create table password_resets
(
  email      varchar(191) not null,
  token      varchar(191) not null,
  created_at timestamp    null
)
  collate = utf8mb4_unicode_ci;

create index password_resets_email_index
  on password_resets (email);

create table products
(
  id         int unsigned auto_increment
    primary key,
  name       varchar(191) not null,
  detail     text         not null,
  price      int          not null,
  stock      int          not null,
  discount   int          not null,
  created_at timestamp    null,
  updated_at timestamp    null
)
  collate = utf8mb4_unicode_ci;

create table reviews
(
  id         int unsigned auto_increment
    primary key,
  product_id int unsigned not null,
  costumer   varchar(191) not null,
  review     text         not null,
  star       int          not null,
  created_at timestamp    null,
  updated_at timestamp    null
)
  collate = utf8mb4_unicode_ci;

create index reviews_product_id_index
  on reviews (product_id);

create table users
(
  id                int unsigned auto_increment
    primary key,
  name              varchar(191) not null,
  email             varchar(191) not null,
  email_verified_at timestamp    null,
  password          varchar(191) not null,
  remember_token    varchar(100) null,
  created_at        timestamp    null,
  updated_at        timestamp    null,
  constraint users_email_unique
    unique (email)
)
  collate = utf8mb4_unicode_ci;


