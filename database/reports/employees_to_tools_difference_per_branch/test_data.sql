-- Additional data for the Owns table
INSERT INTO Owns (tool_name, branch_name, quantity) VALUES
    ('Knife', 'City Center Branch', 7),
    ('Frying pan', 'City Center Branch', 4),
    ('Cutting board', 'City Center Branch', 2),
    ('Blender', 'City Center Branch', 5),
    ('Toaster', 'City Center Branch', 8),
    ('Knife', 'Sahel', 10),
    ('Frying pan', 'Sahel', 6),
    ('Cutting board', 'Sahel', 8),
    ('Blender', 'Sahel', 3),
    ('Toaster', 'Sahel', 6);

-- Additional data for the Employee table
INSERT INTO Employee (first_name, last_name, employee_ssn, date_of_birth, age, salary, hiring_date, experience_years, role, branch_name) VALUES
    ('John', 'Doe', '111111111', '1990-01-01', 32, 6000, '2023-05-15', 8, 'chef', 'City Center Branch'),
    ('Jane', 'Smith', '222222222', '1995-03-15', 27, 5500, '2024-02-10', 4, 'cashier', 'Sahel'),
    ('Emma', 'Johnson', '333333333', '1997-07-20', 24, 5000, '2023-09-28', 2, 'delivery_guy', 'City Center Branch'),
    ('Michael', 'Brown', '444444444', '1993-11-10', 28, 6200, '2022-08-05', 6, 'chef', 'Sahel'),
    ('Sophia', 'Miller', '555555555', '1988-04-05', 33, 7000, '2021-12-20', 12, 'manager', 'City Center Branch');

-- Additional data for the Can_use table
INSERT INTO Can_use (employee_ssn, tool_name) VALUES
    ('111111111', 'Knife'),
    ('111111111', 'Frying pan'),
    ('111111111', 'Cutting board'),
    ('222222222', 'Knife'),
    ('222222222', 'Toaster'),
    ('333333333', 'Blender'),
    ('333333333', 'Frying pan'),
    ('333333333', 'Cutting board'),
    ('444444444', 'Knife'),
    ('444444444', 'Frying pan'),
    ('555555555', 'Knife'),
    ('555555555', 'Frying pan'),
    ('555555555', 'Cutting board');

INSERT INTO Chef (employee_ssn, orders_count) VALUES
    ('111111111', 25),
    ('222222222', 30),
    ('333333333', 20),
    ('444444444', 15),
    ('555555555', 18);
