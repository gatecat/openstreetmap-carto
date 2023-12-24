/* For the main linear features, such as roads and railways. */

@tertiary-fill: #f8f400;
@residential-fill: #ffffff;
@service-fill: @residential-fill;
@living-street-fill: #ffffff;
@pedestrian-fill: #ffffff;
@raceway-fill: #ffc0cb;
@road-fill: #f8f400;
@footway-fill: #ffffff;
@footway-fill-noaccess: #bbbbbb;
@steps-fill: @footway-fill;
@steps-fill-noaccess: #bbbbbb;
@cycleway-fill: #ffffff;
@bridleway-fill: #ffffff;
@track-fill: #ffffff;
@platform-fill: #bbbbbb;
@aeroway-fill: #bbc;
@runway-fill: @aeroway-fill;
@taxiway-fill: @aeroway-fill;
@helipad-fill: @aeroway-fill;
@access-marking: #eaeaea;
@access-marking-primary: #f0f0f0;
@access-marking-secondary: #e4e4e4;
@access-marking-white-unpaved: #e0e0e0;
@access-marking-road: #f0f0f0;
@access-marking-living-street: #d4d4d4;

@default-casing: #000000;
@tertiary-casing: #000000;
@residential-casing: #000000;
@road-casing: @residential-casing;
@service-casing: @residential-casing;
@living-street-casing: @residential-casing;
@pedestrian-casing: #999;
@path-casing: @default-casing;
@footway-casing: @default-casing;
@steps-casing: @default-casing;
@cycleway-casing: @default-casing;
@bridleway-casing: @default-casing;
@track-casing: @default-casing;

@tertiary-shield: #3b3b3b;

@unimportant-road: @residential-casing;

@minor-construction: #aaa;
@service-construction: #aaa;

@destination-marking: #c2e0ff;
@private-marking: #efa9a9;
@private-marking-for-red: #C26363;

@tunnel-casing: grey;
@bridge-casing: black;

@motorway-tunnel-fill: lighten(@motorway-fill, 20%);
@trunk-tunnel-fill: lighten(@trunk-fill, 20%);
@primary-tunnel-fill: lighten(@primary-fill, 20%);
@secondary-tunnel-fill: lighten(@secondary-fill, 20%);
@tertiary-tunnel-fill: lighten(@tertiary-fill, 5%);
@residential-tunnel-fill: darken(@residential-fill, 5%);
@living-street-tunnel-fill: lighten(@living-street-fill, 3%);

@motorway-width: 4;
@trunk-width: 4;
@primary-width: 4;
@secondary-width: 3;
@tertiary-width: 3;
@residential-width:          2.5;
@living-street-width:         2.5;
@unclassified-width:         2.5;

@pedestrian-width:            2;
@road-width:                  2.5;
@service-width:               2.5;
@minor-service-width:         2.5;

@track-width:                 2;
@path-width:                  0.75;


@casing-width:                0.375;

@bridge-casing-width:         0.375;

@mini-roundabout-width:           4;

@junction-text-color:             #960000;
@halo-color-for-minor-road:       white;
@lowzoom-halo-color:              white;
@lowzoom-halo-width:              1;

@motorway-oneway-arrow-color:     darken(@motorway-casing, 25%);
@trunk-oneway-arrow-color:        darken(@trunk-casing, 25%);
@primary-oneway-arrow-color:      darken(@primary-casing, 15%);
@secondary-oneway-arrow-color:    darken(@secondary-casing, 10%);
@tertiary-oneway-arrow-color:     darken(@tertiary-casing, 30%);
@residential-oneway-arrow-color:  darken(@residential-casing, 40%);
@living-street-oneway-arrow-color: darken(@residential-casing, 30%);
@pedestrian-oneway-arrow-color:   darken(@pedestrian-casing, 25%);
@raceway-oneway-arrow-color:      darken(@raceway-fill, 50%);
@footway-oneway-arrow-color:      darken(@footway-fill, 35%);
@steps-oneway-arrow-color:        darken(@steps-fill, 35%);
@cycleway-oneway-arrow-color:     darken(@cycleway-fill, 25%);
@track-oneway-arrow-color:        darken(@track-fill, 10%);
@bridleway-oneway-arrow-color:    darken(@bridleway-fill, 15%);

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
    [zoom >= 12] {
      [feature = 'highway_motorway'] {
        line-width: @motorway-width;
        line-color: @motorway-low-zoom-casing;
        [zoom >= 13] {
          line-color: @motorway-casing;
        }
        #tunnels {
          line-dasharray: 4,2;
        }
        #bridges {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_trunk'] {
      [zoom >= 12] {
        line-color: @trunk-low-zoom-casing;
        [zoom >= 13] {
          line-color: @trunk-casing;
        }
        line-width: @trunk-width;
        #tunnels {
          line-dasharray: 4,2;
        }
        #bridges {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
      }
    }

    [feature = 'highway_primary'] {
      [zoom >= 12] {
        line-color: @primary-low-zoom-casing;
        [zoom >= 13] {
          line-color: @primary-casing;
        }
        line-width: @primary-width;
        #tunnels {
          line-dasharray: 4,2;
        }
        #bridges {
          line-join: round;
          [zoom >= 13] { line-color: @bridge-casing; }
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 12] {
        line-color: @secondary-low-zoom-casing;
        [zoom >= 13] {
          line-color: @secondary-casing;
        }
        line-width: @secondary-width;
        #tunnels {
          line-dasharray: 4,2;
        }
        #bridges {
          [zoom >= 13] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 12] {
        line-color: @tertiary-casing;
        line-width: @tertiary-width;
        #tunnels {
          line-dasharray: 4,2;
        }
        #bridges {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom >= 13] {
        line-color: @residential-casing;
        line-width: @residential-width;
        [feature = 'highway_residential'] {
          line-dasharray: 3,3;
        }
        #tunnels {
          line-dasharray: 4,4;
        }
        #bridges {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_road'] {
      [zoom >= 14] {
        line-color: @road-casing;
        line-width: @road-width;
        line-dasharray: 3,3;
        #tunnels {
          line-dasharray: 4,2;
        }
        #bridges {
          line-color: @bridge-casing;
          line-join: round;
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_service'] {
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-casing;
        [service = 'INT-normal'] {
          line-width: @service-width;
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width;
        }
        line-dasharray: 3,3;
        #tunnels {
          line-dasharray: 4,2;
        }
        #bridges {
          line-color: @bridge-casing;
          line-join: round;
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_pedestrian'] {
      [zoom >= 14] {
        line-color: @pedestrian-casing;
        line-width: @pedestrian-width;
        #tunnels {
          line-dasharray: 4,2;
        }
        line-dasharray: 3,3;
        #bridges {
          line-color: @bridge-casing;
          line-join: round;
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-color: @residential-casing;
        line-width: @living-street-width;
        #tunnels {
          line-dasharray: 4,2;
        }
        line-dasharray: 3,3;
        #bridges {
          [zoom >= 14] {
            line-color: @bridge-casing;
            line-join: round;
          }
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_track'] {
      [zoom >= 14] {
        background/line-width: @track-width + @casing-width;
        background/line-color: #ffffff;
        foreground/line-width: @track-width;
        foreground/line-color: #000000;
        foreground/line-dasharray: 2,2;
        foreground/line-join: bevel;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 14] {
      #bridges {
        [zoom >= 13] {
          line-width: 4;
          [zoom >= 15] {
            line-width: 5;
          }
          line-color: @bridge-casing;
        }
      }
    }

    [feature = 'railway_subway'],
    [feature = 'railway_construction']['construction' = 'subway'] {
      #bridges {
        [zoom >= 14] {
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
        [zoom >= 14] {
          line-width: 5.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_rail'],
    [feature = 'railway_preserved'],
    [feature = 'railway_monorail'][zoom >= 14] {
      #bridges {
        [zoom >= 13] {
          line-width: 6.5;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      #bridges {
        [zoom >= 13] {
          line-width: 5.7;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 15],
    [feature = 'railway_construction']['construction' != 'subway'],
    [feature = 'railway_miniature'][zoom >= 15],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      #bridges {
        [zoom >= 13] {
          line-width: 6;
          line-color: @bridge-casing;
          line-join: round;
        }
      }
    }

  }

  ::bridges_and_tunnels_background {

    [feature = 'railway_rail'][zoom >= 13],
    [feature = 'railway_preserved'][zoom >= 13],
    [feature = 'railway_monorail'][zoom >= 14] {
      #bridges {
        line-width: 5;
        line-color: white;
        line-join: round;
      }
    }

    [feature = 'railway_INT-spur-siding-yard'] {
      #bridges {
        [zoom >= 13] {
          line-width: 4;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_disused'][zoom >= 14],
    [feature = 'railway_construction']['construction' != 'subway'],
    [feature = 'railway_miniature'][zoom >= 14],
    [feature = 'railway_INT-preserved-ssy'][zoom >= 14] {
      #bridges {
        [zoom >= 13] {
          line-width: 4.5;
          line-color: white;
          line-join: round;
        }
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 14] {
      #bridges {
        [zoom >= 13] {
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
        [zoom >= 14] {
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

/* Data on z<10 comes from osm_planet_roads, data on z>=10 comes from
osm_planet_line. This is for performance reasons: osm_planet_roads contains less
data, and is thus faster. Chosen is for zoom level 10 as cut-off, because
tertiary is rendered from z10 and is not included in osm_planet_roads. */

#roads-low-zoom[zoom < 10],
#roads-fill[zoom >= 10],
#bridges[zoom >= 10],
#tunnels[zoom >= 10] {

  ::fill {
    #roads-low-zoom[feature = 'highway_motorway'],
    #roads-fill[feature = 'highway_motorway'],
    #bridges[feature = 'highway_motorway'],
    #tunnels[feature = 'highway_motorway'] {
      [zoom >= 6][link != 'yes'],
      [zoom >= 10] {
        line-color: @motorway-low-zoom;
        line-width: @motorway-width;
        [zoom >= 12] {
          line-color: @motorway-fill;
          line-width: @motorway-width - 2 * @casing-width;
          #tunnels {
            line-color: @motorway-tunnel-fill;
          }
          #bridges {
            line-width: @motorway-width - 2 * @bridge-casing-width;
          }
          line-join: bevel;
        }
      }
    }

    #roads-low-zoom[feature = 'highway_trunk'],
    #roads-fill[feature = 'highway_trunk'],
    #bridges[feature = 'highway_trunk'],
    #tunnels[feature = 'highway_trunk'] {
      [zoom >= 6][link != 'yes'],
      [zoom >= 10] {
        line-width: @trunk-width;
        line-color: @trunk-low-zoom;
        [zoom >= 12] {
          line-color: @trunk-fill;
          line-width: @trunk-width - 2 * @casing-width;

          #tunnels {
            line-color: @trunk-tunnel-fill;
          }
          #bridges {
            line-width: @trunk-width - 2 * @bridge-casing-width;
          }
          line-join: bevel;
        }
      }
    }

    #roads-low-zoom[feature = 'highway_primary'],
    #roads-fill[feature = 'highway_primary'],
    #bridges[feature = 'highway_primary'],
    #tunnels[feature = 'highway_primary'] {
      [zoom >= 8][link != 'yes'],
      [zoom >= 10] {
        line-width: @primary-width;
        line-color: @primary-low-zoom;
        [zoom >= 12] {
          line-color: @primary-fill;
          line-width: @primary-width - 2 * @casing-width;
          #tunnels {
            line-color: @primary-tunnel-fill;
          }
          #bridges {
            line-width: @primary-width - 2 * @bridge-casing-width;
          }
          line-join: bevel;
        }
      }
    }

    [feature = 'highway_secondary'] {
      [zoom >= 9][link != 'yes'],
      [zoom >= 10] {
        line-color: @unimportant-road;
        line-width: @secondary-width;
        [zoom >= 12] {
          line-color: @secondary-fill;
          line-width: @secondary-width - 2 * @casing-width;
          #tunnels {
            line-color: @secondary-tunnel-fill;
          }
          #bridges {
            line-width: @secondary-width - 2 * @bridge-casing-width;
          }
          line-join: bevel;
        }
      }
    }

    [feature = 'highway_tertiary'] {
      [zoom >= 10] {
        line-color: @unimportant-road;
        line-width: @tertiary-width;
        [zoom >= 11] {
          line-width: @tertiary-width;
        }
        [zoom >= 12] {
          line-color: @tertiary-fill;
          line-width: @tertiary-width - 2 * @casing-width;


          #tunnels {
            line-color: @tertiary-tunnel-fill;
          }
          #bridges {
            line-width: @tertiary-width - 2 * @bridge-casing-width;
          }
          line-join: bevel;
        }
      }
    }

    [feature = 'highway_residential'],
    [feature = 'highway_unclassified'] {
      [zoom = 12][feature = 'highway_residential'] {
        line-color: @unimportant-road;
        line-width: @residential-width;
      }
      [zoom = 12][feature = 'highway_unclassified'] {
        line-color: @unimportant-road;
        line-width: @unclassified-width;
      }
      [zoom >= 13] {
        line-width: @residential-width - 2 * @casing-width;
        #roads-fill, #bridges {
          line-color: @residential-fill;
        }
        #tunnels {
          line-color: @residential-tunnel-fill;
        }
        #bridges {
          line-width: @residential-width - 2 * @bridge-casing-width;
        }
        line-join: bevel;
      }
    }

    #roads-fill[feature = 'highway_living_street'],
    #bridges[feature = 'highway_living_street'],
    #tunnels[feature = 'highway_living_street'] {
      [zoom >= 13] {
        line-width: @living-street-width - 2 * @casing-width;
        #roads-fill, #bridges {
          line-color: @living-street-fill;
        }
        #tunnels {
          line-color: @living-street-tunnel-fill;
        }
        #bridges {
          line-width: @living-street-width - 2 * @casing-width;
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_road'] {
      [zoom >= 10] {
        line-width: 1;
        line-color: @unimportant-road;
      }
      [zoom >= 14] {
        line-width: @road-width - 2 * @casing-width;
        #roads-fill {
          line-color: @road-fill;
        }
        #bridges {
          line-width: @road-width - 2 * @bridge-casing-width;
          line-color: @road-fill;
        }
        #tunnels {
          line-color: @road-fill;
        }
        line-join: bevel;
      }
    }

    #roads-fill[feature = 'highway_service'],
    #bridges[feature = 'highway_service'],
    #tunnels[feature = 'highway_service'] {
      [zoom >= 14][service = 'INT-normal'],
      [zoom >= 16][service = 'INT-minor'] {
        line-color: @service-fill;
        [service = 'INT-normal'] {
          line-width: @service-width - 2 * @casing-width;
        }
        [service = 'INT-minor'] {
          line-width: @minor-service-width - 2 * @casing-width;
        }
        #tunnels {
          line-color: darken(white, 5%);
        }
        #bridges {
          [service = 'INT-normal'] {
            line-width: @service-width - 2 * @bridge-casing-width;
          }
          [service = 'INT-minor'] {
            line-width: @minor-service-width - 2 * @bridge-casing-width;
          }
        }
        line-join: bevel;
      }
    }

    #roads-fill[feature = 'highway_pedestrian'],
    #bridges[feature = 'highway_pedestrian'],
    #tunnels[feature = 'highway_pedestrian'] {
      [zoom >= 14] {
        line-width: @pedestrian-width - 2 * @casing-width;
        line-color: @pedestrian-fill;
        #bridges {
          line-width: @pedestrian-width - 2 * @bridge-casing-width;
        }
        line-join: bevel;
      }
    }

    [feature = 'highway_footway'],
    [feature = 'highway_path'],
    [feature = 'highway_steps'] {
      [zoom >= 14] {
        line-width: @path-width;
        line-color: #000000;
        line-dasharray: 2,2;
        line-join: bevel;
        [piste = 'sled'] {
          marker-file: url('symbols/amenity/sled.svg');
          marker-width: 16;
          marker-fill: #00b2ec;
          marker-comp-op: darken;
        }
      }
    }

    [feature = 'highway_via_ferrata'] {
      [zoom >= 14] {
        line-width: @path-width;
        line-color: #000000;
        line-dasharray: 0.5,3.5;
        line-join: bevel;
        line-cap: round;
      }
    }

    [feature = 'highway_bridleway'],
    [feature = 'highway_cycleway'],
    [feature = 'highway_track'] {
      [zoom >= 14] {
        line-width: @track-width - 2 * @casing-width;
        line-color: #ffffff;
        line-join: bevel;
        [piste = 'sled'] {
          marker-file: url('symbols/amenity/sled.svg');
          marker-width: 16;
          marker-fill: #00b2ec;
          marker-comp-op: darken;
        }
      }
    }

    [feature = 'railway_rail'][zoom >= 8],
    [feature = 'railway_INT-spur-siding-yard'][zoom >= 13] {
      [zoom >= 12] {
        #roads-fill, #bridges {
          dark/line-join: round;
          light/line-color: white;
          light/line-join: round;
          [feature = 'railway_rail'] {
            dark/line-color: #000000;
            dark/line-width: 2;
            light/line-width: 0.75;
            light/line-dasharray: 8,8;
            [zoom >= 13] {
              dark/line-width: 3;
              light/line-width: 1;
            }
            [zoom >= 15] {
              light/line-dasharray: 0,8,8,1;
            }
            [zoom >= 18] {
              dark/line-width: 4;
              light/line-width: 2;
            }
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
          line-color: #000000;
          line-width: 2.8;
          line-dasharray: 6,4;
          line-clip: false;
          [feature = 'railway_INT-spur-siding-yard'] {
            line-color: #aaa;
            line-width: 1.9;
            line-dasharray: 5,5;
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
      [zoom >= 14] {
        line/line-width: 1.2;
        line/line-color: #999;
        dashes/line-width: 3;
        dashes/line-color: #999;
        dashes/line-dasharray: 1,10;
      }
    }

    [feature = 'railway_tram'],
    [feature = 'railway_tram-service'][zoom >= 14] {
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
        line/line-width: 3;
        line/line-color: #777;
        line/line-dasharray: 2,3;
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
          line-dasharray: 5,5;
        }
      }
    }

    [feature = 'railway_disused'] {
      [zoom >= 14] {
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
        b/line-width: 4;
        b/line-color: @platform-fill;
      }
    }

    [feature = 'railway_platform'][int_surface = 'unpaved'] {
      [zoom >= 16] {
        line-join: round;
        line-width: 6;
        line-color: grey;
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


#bridge-text  {
  [man_made = 'bridge'] {
    [zoom >= 12][way_pixels > 125][way_pixels <= 768000] {
      text-name: "[name]";
      text-size: 10;
      text-wrap-width: 30; // 3 em
      text-line-spacing: -1.2; // -0.15 em
      text-fill: black;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-margin: 3; // 0.3 em
      text-wrap-width: 30;
      [way_pixels > 250] {
        text-size: 11;
        text-margin: 3.3; // 0.3 em
        text-wrap-width: 33; // 3 em
        text-line-spacing: -1.35; // -0.15 em
        text-halo-radius: @standard-halo-radius * 1.1;
      }
      [way_pixels > 1000] {
        text-size: 12;
        text-margin: 3.6; // 0.3 em
        text-wrap-width: 36; // 3 em
        text-line-spacing: -1.65; // -0.15 em
        text-halo-radius: @standard-halo-radius * 1.2;
      }
      [way_pixels > 4000] {
        text-size: 13;
        text-margin: 3.9; // 0.3 em
        text-wrap-width: 39; // 3 em
        text-line-spacing: -1.80; // -0.15 em
        text-halo-radius: @standard-halo-radius * 1.3;
      }
      [way_pixels > 16000] {
        text-size: 14;
        text-margin: 4.2; // 0.3 em
        text-wrap-width: 42; // 3 em
        text-line-spacing: -1.95; // -0.15 em
        text-halo-radius: @standard-halo-radius * 1.4;
      }
    }
  }
}


#guideways {
  [zoom >= 11][zoom < 13] {
    line-width: 0.6;
    line-color: #6699ff;
    [zoom >= 12] { line-width: 1; }
  }
  [zoom >= 13] {
    line-width: 3;
    line-color: #6699ff;
    line-join: round;
    b/line-width: 1;
    b/line-color: white;
    b/line-dasharray: 8,12;
    b/line-join: round;
  }
  [zoom >= 14] {
    b/line-dasharray: 0,11,8,1;
  }
}

#aeroways {
  [aeroway = 'runway'] {
    [zoom >= 11] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 12 + 2*@casing-width;
        line-color: @bridge-casing;
        line-join: round;
      }
      ::fill {
        [int_surface != 'unpaved'] {
          line-color: @runway-fill;
          line-width: 2;
          [zoom >= 12] { line-width: 4; }
          [zoom >= 13] { line-width: 6; }
          [zoom >= 14] { line-width: 12; }
          [zoom >= 15] { line-width: 18; }
          [zoom >= 16] { line-width: 24; }
        }
        [int_surface = 'unpaved'] {
          line-pattern-type: repeat;
          line-pattern-alignment: global;
          line-pattern-file: url("symbols/unpaved/unpaved_aeroway-fill.svg"); 
          line-pattern-width: 2;
          [zoom >= 12] { line-pattern-width: 4; }
          [zoom >= 13] { line-pattern-width: 6; }
          [zoom >= 14] { line-pattern-width: 12; }
          [zoom >= 15] { line-pattern-width: 18; }
          [zoom >= 16] { line-pattern-width: 24; }
        }
      }
    }
  }
  [aeroway = 'taxiway'] {
    [zoom >= 11] {
      ::casing[bridge = true][zoom >= 14] {
        line-width: 4 + 2*@casing-width;
        line-color: @bridge-casing;
        line-join: round;
      }
      ::fill {
        [int_surface != 'unpaved'] {
          line-color: @taxiway-fill ;
          line-width: 1;
          [zoom >= 13] { line-width: 2; }
          [zoom >= 14] { line-width: 4; }
          [zoom >= 15] { line-width: 6; }
          [zoom >= 16] { line-width: 8; }
        }
        [int_surface = 'unpaved'] {
          line-pattern-type: repeat;
          line-pattern-alignment: global;
          line-pattern-file: url("symbols/unpaved/unpaved_aeroway-fill.svg"); 
          line-pattern-width: 1;
          [zoom >= 13] { line-pattern-width: 2; }
          [zoom >= 14] { line-pattern-width: 4; }
          [zoom >= 15] { line-pattern-width: 6; }
          [zoom >= 16] { line-pattern-width: 8; }
        }
      }
    }
  }
}
