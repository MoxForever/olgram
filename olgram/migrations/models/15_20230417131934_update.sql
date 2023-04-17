-- upgrade --
CREATE TABLE IF NOT EXISTS "botcommand" (
    "id" BIGSERIAL NOT NULL PRIMARY KEY,
    "bot_id" INT NOT NULL REFERENCES "bot" ("id") ON DELETE CASCADE,
    "cmd_text" CHARACTER VARYING(32) NOT NULL,
    "answer" JSON NOT NULL
)
