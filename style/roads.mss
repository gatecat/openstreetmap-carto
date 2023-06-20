/* For the main linear features, such as roads and railways. */

@unimportant-road: @residential-casing;

@minor-construction: #aaa;
@service-construction: #aaa;

@destination-marking: #c2e0ff;
@private-marking: #efa9a9;
@private-marking-for-red: #C26363;

@tunnel-casing: grey;
@bridge-casing: black;

@paths-background-width:          1;
@paths-bridge-casing-width:       0.5;
@paths-tunnel-casing-width:       1;

@mini-roundabout-width:           4;

@junction-text-color:             #960000;
@halo-color-for-minor-road:       white;
@lowzoom-halo-color:              white;
@lowzoom-halo-width:              1;


// Shield’s line wrap is based on OpenStreetMap data and not on line-wrap-width,
// but lines are typically rather short, so we use narrow line spacing.
@shield-size: 10;
@shield-line-spacing: -1.50; // -0.15 em
@shield-size-z16: 11;
@shield-line-spacing-z16: -1.65; // -0.15 em
@shield-size-z18: 12;
@shield-line-spacing-z18: -1.80; // -0.15 em
@shield-spacing: 760;
@shield-repeat-distance: 400;
@shield-margin: 40;
@shield-font: @book-fonts;
@shield-clip: false;

@major-highway-text-repeat-distance: 50;
@minor-highway-text-repeat-distance: 10;

@railway-text-repeat-distance: 200;

#roads-casing, #bridges, #tunnels {
  ::casing {
    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 6] {
      #bridges {
        [zoom >= 6] {
          line-width: 4;
          [zoom >= 6] {
            line-width: 5;
          }
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_subway'],
    [feature = 'railway_construction']['construction' = 'subway'] {
      #bridges {
        [zoom >= 6] {
          line-width: 5.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      #bridges {
        [zoom >= 6] {
          line-width: 5.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_rail'],
    [feature = 'railway_preserved'],
    [feature = 'railway_monorail'][zoom >= 6] {
      #bridges {
        [zoom >= 6] {
          line-width: 6.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      #bridges {
        [zoom >= 6] {
          line-width: 5.7;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 6],
    [feature = 'railway_construction']['construction' != 'subway'],
    [feature = 'railway_miniature'][zoom >= 6],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 6] {
      #bridges {
        [zoom >= 6] {
          line-width: 6;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }
  }

  ::bridges_and_tunnels_background {
    [feature = 'railway_rail'][zoom >= 6],
    [feature = 'railway_preserved'][zoom >= 6],
    [feature = 'railway_monorail'][zoom >= 6] {
      #bridges {
        line-width: 5;
        line-color: white;
        line-join: round;
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      #bridges {
        [zoom >= 6] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 6],
    [feature = 'railway_construction']['construction' != 'subway'],
    [feature = 'railway_miniature'][zoom >= 6],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 6] {
      #bridges {
        [zoom >= 6] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 25] {
      #bridges {
        [zoom >= 6] {
          line-width: 3;
          [zoom >= 15] {
            line-width: 4;
          }
          line-color: white;
        }
      }
    }

    [feature = 'railway_subway'],
    [feature = 'railway_construction']['construction' = 'subway'] {
      #bridges {
        [zoom >= 6] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      #bridges {
        [zoom >= 14] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }
  }
}

#railways-text-name {
  /* Mostly started from z17. */
  [railway = 'rail'],
  [railway = 'subway'],
  [railway = 'narrow_gauge'],
  [railway = 'light_rail'],
  [railway = 'preserved'],
  [railway = 'funicular'],
  [railway = 'monorail'],
  [railway = 'tram'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #666666;
      text-size: 10;
      text-dy: 6;
      text-spacing: 900;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-repeat-distance: @railway-text-repeat-distance;
    }
    [zoom >= 19] {
      text-size: 11;
      text-dy: 7;
    }
  }
  [railway = 'rail'] {
    /* Render highspeed rails from z11,
       other main routes at z14. */
    [highspeed = 'yes'] {
      [zoom >= 11] {
        text-name: "[name]";
        text-fill: #666666;
        text-size: 10;
        text-dy: 3;
        text-spacing: 300;
        text-clip: false;
        text-placement: line;
        text-face-name: @book-fonts;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
        text-repeat-distance: @railway-text-repeat-distance;
      }
      [zoom >= 13] {
        text-dy: 6;
      }
      [zoom >= 14] {
        text-spacing: 600;
      }
      [zoom >= 17] {
        text-size: 11;
        text-dy: 7;
      }
      [zoom >= 19] {
        text-size: 12;
        text-dy: 8;
      }
    }
    [highspeed != 'yes'][usage = 'main'] {
      [zoom >= 14] {
        text-name: "[name]";
        text-fill: #666666;
        text-size: 10;
        text-dy: 6;
        text-spacing: 300;
        text-clip: false;
        text-placement: line;
        text-face-name: @book-fonts;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
        text-repeat-distance: @railway-text-repeat-distance;
      }
      [zoom >= 17] {
        text-spacing: 600;
        text-size: 11;
        text-dy: 7;
      }
      [zoom >= 19] {
        text-size: 12;
        text-dy: 8;
      }
    }
  }
  /* Other minor railway styles. For service rails, see:
     https://github.com/gravitystorm/openstreetmap-carto/pull/2687 */
  [railway = 'preserved'],
  [railway = 'miniature'],
  [railway = 'disused'],
  [railway = 'construction'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #666666;
      text-size: 10;
      text-dy: 6;
      text-spacing: 900;
      text-clip: false;
      text-placement: line;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-repeat-distance: @railway-text-repeat-distance;
    }
    [zoom >= 19] {
      text-size: 11;
      text-dy: 7;
    }
  }
}
