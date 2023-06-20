/* For the main linear features, such as roads and railways. */

@unimportant-road: @residential-casing;

@platform-fill: #bbbbbb;

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

#roads-low-zoom[zoom < 7],
#roads-fill[zoom >= 7],
#bridges[zoom >= 7],
#tunnels[zoom >= 7] {
  ::fill {
    [feature = 'railway_rail'][zoom >= 8],
    [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
      #roads-fill, #bridges {
        line-join: round;
        line-width: 1.2;
        [usage = 'main'][highspeed != 'yes'] {
          line-color: #cc5500;
        }
        [usage = 'branch'][highspeed != 'yes'] {
          line-color: #cccc00;
        }
        [highspeed = 'yes'] {
          line-color: #ff0000;
        }
        [feature = 'railway_INT-spur-siding-yard'] {
          dark/line-width: 2;
          dark/line-color: #aaa;
          light/line-width: 0.8;
          light/line-dasharray: 0,8,8,1;
          [zoom >= 18] {
            dark/line-width: 3;
            light/line-width: 1;
          }
        }
      }
      #tunnels {
        line-color: #787878;
        line-width: 2.8;
        line-dasharray: 6,4;
        line-clip: false;
        [usage = 'main'][highspeed = 'no'] {
          line-color: #cc5578;
        }
        [usage = 'branch'][highspeed = 'no'] {
          line-color: #cccc78;
        }
        [highspeed = 'yes'] {
          line-color: #ff7878;
        }
        [feature = 'railway_INT-spur-siding-yard'] {
          line-color: #aaa;
          line-width: 1.9;
          line-dasharray: 3,3;
          [zoom >= 18] {
          line-width: 2.7;
          }
        }
        [feature = 'railway_rail'][zoom >= 18] {
          line-dasharray: 8,6;
          line-width: 3.8;
        }
      }
    }

    [feature = 'railway_light_rail'],
    [feature = 'railway_funicular'],
    [feature = 'railway_narrow_gauge'] {
      [zoom >= 8] {
        line-color: #ccc;
        [zoom >= 10] { line-color: #aaa; }
        [zoom >= 13] { line-color: #666; }
        line-width: 1;
        [zoom >= 13] { line-width: 2; }
        #tunnels {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_miniature'] {
      [zoom >= 15] {
        line/line-width: 1.2;
        line/line-color: #999;
        dashes/line-width: 3;
        dashes/line-color: #999;
        dashes/line-dasharray: 1,10;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 15] {
      [zoom >= 12] {
        line-color: #6E6E6E;
        line-width: 0.75;
        [zoom >= 14] {
          line-width: 1;
        }
        [zoom >= 15] {
          line-width: 1.5;
          [feature = 'railway_tram-service'] {
            line-width: 0.5;
          }
        }
        [zoom >= 17] {
          line-width: 2;
          [feature = 'railway_tram-service'] {
            line-width: 1;
          }
        }
        [zoom >= 18] {
          [feature = 'railway_tram-service'] {
            line-width: 1.5;
          }
        }
        [zoom >= 19] {
          [feature = 'railway_tram-service'] {
            line-width: 2;
          }
        }
        #tunnels {
          line-dasharray: 5,3;
        }
      }
    }

    [feature = 'railway_subway'] {
      [zoom >= 12] {
        line-width: 2;
        line-color: #999;
        #tunnels {
          line-dasharray: 5,3;
        }
      }
      #bridges {
        [zoom >= 14] {
          line-width: 2;
          line-color: #999;
        }
      }
    }

    [feature = 'railway_preserved'] {
      [zoom >= 12] {
        dark/line-width: 1.5;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 3;
          dark/line-color: #999999;
          light/line-width: 1;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_INT-preserved-ssy'] {
      [zoom >= 12] {
        dark/line-width: 1;
        dark/line-color: #aaa;
        dark/line-join: round;
        [zoom >= 13] {
          dark/line-width: 2;
          dark/line-color: #999999;
          light/line-width: 0.8;
          light/line-color: white;
          light/line-dasharray: 0,1,8,1;
          light/line-join: round;
        }
      }
    }

    [feature = 'railway_monorail'] {
      [zoom >= 14] {
        background/line-width: 4;
        background/line-color: #fff;
        background/line-opacity: 0.4;
        background/line-cap: round;
        background/line-join: round;
        line/line-width: 3;
        line/line-color: #777;
        line/line-dasharray: 2,3;
        line/line-cap: round;
        line/line-join: round;
      }
    }

    [feature = 'railway_construction'] {
      [zoom >= 13] {
        line-color: grey;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
        [zoom >= 14] {
          line-dasharray: 2,3;
        }
        [zoom >= 15] {
          line-width: 3;
          line-dasharray: 3,3;
        }
      }
    }

    [feature = 'railway_disused'] {
      [zoom >= 15] {
        line-color: #aaa;
        line-width: 2;
        line-dasharray: 2,4;
        line-join: round;
      }
    }

    [feature = 'railway_platform'][int_surface != 'unpaved'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-width: 4;
        b/line-color: @platform-fill;
        b/line-cap: round;
        b/line-join: round;
      }
    }

    [feature = 'railway_platform'][int_surface = 'unpaved'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
        line-cap: round;
        b/line-pattern-width: 4;
        b/line-pattern-type: repeat;
        b/line-pattern-alignment: global;
        b/line-pattern-file: url("symbols/unpaved/unpaved_platform-fill.svg"); 
        b/line-pattern-cap: round;
        b/line-pattern-join: round;
      }
    }

    [feature = 'railway_turntable'] {
      [zoom >= 16] {
        line-width: 1.5;
        line-color: #999;
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

