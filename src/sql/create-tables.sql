CREATE TABLE 
	IF NOT EXISTS
		products(
			id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(255) NOT NULL,
			description TEXT NOT NULL,
			brand VARCHAR(50) NOT NULL,
            image_url VARCHAR(255) NOT NULL,
            price INTEGER NOT NULL,
            category VARCHAR(50) NOT NULL,
			created_at TIMESTAMPTZ DEFAULT NOW(),
			updated_at TIMESTAMPTZ DEFAULT NOW()
;

CREATE TABLE 
	IF NOT EXISTS
		reviews(
			id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			comment VARCHAR(150) NOT NULL,
			rate INTEGER NOT NULL,
			product_id INTEGER REFERENCES products ON DELETE CASCADE,
			created_at TIMESTAMPTZ DEFAULT NOW()
);
