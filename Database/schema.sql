CREATE TABLE Item (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY
);

CREATE TABLE Book (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  item_id INTEGER,
  publish_date DATE,
  archived BOOLEAN,
  publisher VARCHAR(150),
  cover_state VARCHAR(200),
  FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE TABLE Labels (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  item_id INTEGER,
  title VARCHAR(150),
  color VARCHAR(100),
  FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE TABLE Author (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  item_id INTEGER,
  FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE TABLE Game (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  item_id INTEGER,
  last_played_date DATE NOT NULL,
  multiplayer BOOLEAN NOT NULL,
  FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE TABLE MusicAlbum (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  item_id INTEGER,
  on_spotify BOOLEAN,
  publish_date DATE,
  FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE TABLE Genre (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(150),
  item_id INTEGER,
  FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE INDEX index_music_album_item_id ON MusicAlbum(item_id);
CREATE INDEX index_genre_item_id ON Genre(item_id);
CREATE INDEX index_game_item_id ON Game(item_id);
CREATE INDEX index_book_item_id ON Book(item_id);
CREATE INDEX index_labels_item_id ON Labels(item_id);
CREATE INDEX index_author_item_id ON Author(item_id);