-- begin SAMPLE_FRUIT
create table SAMPLE_FRUIT (
    ID uuid,
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    VERSION integer not null,
    --
    NAME varchar(255) not null,
    FRUIT_SET_ID uuid,
    --
    primary key (ID)
)^
-- end SAMPLE_FRUIT
-- begin SAMPLE_FRUIT_SET
create table SAMPLE_FRUIT_SET (
    ID uuid,
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
