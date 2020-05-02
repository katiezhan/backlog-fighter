DROP TABLE IF EXISTS backlog_types;
DROP TABLE IF EXISTS backlog;

CREATE TABLE backlog_types (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    backlog_type TEXT NOT NULL
);

CREATE TABLE backlog (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    backlog_type INTEGER NOT NULL,
    task_name TEXT NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    goal_date DATETIME,
    FOREIGN KEY (backlog_type) REFERENCES backlog_types (id)
);