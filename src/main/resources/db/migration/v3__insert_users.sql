-- Insert roles into the role table
INSERT INTO role (title) VALUES ('admin'), ('employee');

-- Insert users into the user table
INSERT INTO user (username, password, role_id) VALUES
                                                   ('admin_user', 'admin_password', (SELECT id FROM role WHERE title = 'admin')),
                                                   ('employee_user', 'employee_password', (SELECT id FROM role WHERE title = 'employee'));
