CREATE TRIGGER before_insert_example
BEFORE INSERT ON your_table
FOR EACH ROW
BEGIN
    SET NEW.column_name = UPPER(NEW.column_name);
END;

CREATE TRIGGER after_insert_example
AFTER INSERT ON your_table
FOR EACH ROW
BEGIN
    INSERT INTO log_table (action, action_time)
    VALUES ('INSERT', NOW());
END;

CREATE TRIGGER before_update_example
BEFORE UPDATE ON your_table
FOR EACH ROW
BEGIN
    SET NEW.updated_at = NOW();
END;

CREATE TRIGGER after_update_example
AFTER UPDATE ON your_table
FOR EACH ROW
BEGIN
    INSERT INTO log_table (action, action_time)
    VALUES ('UPDATE', NOW());
END;

CREATE TRIGGER before_delete_example
BEFORE DELETE ON your_table
FOR EACH ROW
BEGIN
    INSERT INTO backup_table (id, data)
    VALUES (OLD.id, OLD.data);
END;

CREATE TRIGGER after_delete_example
AFTER DELETE ON your_table
FOR EACH ROW
BEGIN
    INSERT INTO log_table (action, action_time)
    VALUES ('DELETE', NOW());
END;
