CREATE TABLE Item (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY
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

CREATE INDEX index_music_album_item_id ON MusicAlbum(item_id);
CREATE INDEX index_genre_item_id ON Genre(item_id);
CREATE INDEX index_book_item_id ON Book(item_id);
CREATE INDEX index_labels_item_id ON Labels(item_id);