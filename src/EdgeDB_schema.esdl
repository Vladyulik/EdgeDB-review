module default {

  type Person {
    required name: str;
    link filmography := .<actors[is Content];
  }

  abstract type Content {
    required title: str;
    multi actors: Person {
      character_name: str;
    };
  }

  type Movie extending Content {
    release_year: int32;
  }

  type Show extending Content {
    property num_seasons := count(.<show[is Season]);
  }

};
