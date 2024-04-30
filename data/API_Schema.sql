CREATE TABLE sections (
    section_id INTEGER PRIMARY KEY AUTOINCREMENT,
    section_name TEXT UNIQUE
);

CREATE TABLE api_articles (
    article_id INTEGER PRIMARY KEY AUTOINCREMENT,
    section_id INTEGER,
    headline TEXT,
    snippet TEXT,
    pub_date DATETIME,
    document_type TEXT,
    web_url TEXT,
    word_count INTEGER,
    FOREIGN KEY (section_id) REFERENCES sections (section_id)
);
