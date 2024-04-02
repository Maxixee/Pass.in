CREATE TABLE check_ins (
                             id INTEGER NOT NULL PRIMARY KEY IDENTITY,
                             created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                             attendeeId VARCHAR(255) NOT NULL,
                             CONSTRAINT check_ins_attendeeId_fkey FOREIGN KEY (attendeeId) REFERENCES attendees (id) ON DELETE RESTRICT ON UPDATE CASCADE
);