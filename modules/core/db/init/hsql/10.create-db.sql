-- begin SAMPLE_FRUIT
create table SAMPLE_FRUIT (
    ID varchar(36) not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    --
    NAME varchar(255) not null,
    FRUIT_SET_ID varchar(36),
    --
    primary key (ID)
)^
-- end SAMPLE_FRUIT
-- begin SAMPLE_FRUIT_SET
create table SAMPLE_FRUIT_SET (
    ID varchar(36) not null,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    --
    NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end SAMPLE_FRUIT_SET
