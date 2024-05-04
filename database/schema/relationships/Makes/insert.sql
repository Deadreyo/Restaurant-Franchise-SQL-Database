INSERT INTO Makes (branch_name, offer_id) VALUES 
    -- Shared offers among all branches
    ('Main Branch', 1),
    ('Main Branch', 3),
    ('Main Branch', 6),
    ('Downtown Branch', 1),
    ('Downtown Branch', 3),
    ('Downtown Branch', 6),
    ('City Center Branch', 1),
    ('City Center Branch', 3),
    ('City Center Branch', 6),
    -- Shared offers between Main Branch and Downtown Branch
    ('Main Branch', 9),
    ('Main Branch', 12),
    ('Downtown Branch', 9),
    ('Downtown Branch', 12),
    -- Shared offers between Main Branch and City Center Branch
    ('Main Branch', 15),
    ('Main Branch', 17),
    ('City Center Branch', 15),
    ('City Center Branch', 17),
    -- Shared offers between Downtown Branch and City Center Branch
    ('Downtown Branch', 16),
    ('Downtown Branch', 19),
    ('City Center Branch', 16),
    ('City Center Branch', 19),
    -- Exclusive offers for Main Branch
    ('Main Branch', 8),
    ('Main Branch', 10),
    -- Exclusive offers for Downtown Branch
    ('Downtown Branch', 5),
    ('Downtown Branch', 7),
    -- Exclusive offers for City Center Branch
    ('City Center Branch', 4),
    ('City Center Branch', 11),
    ('City Center Branch', 13),
    ('City Center Branch', 14),
    ('City Center Branch', 18),
    ('City Center Branch', 20);