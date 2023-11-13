@water-text: #00abee;
@glacier: #ddecec;
@glacier-line: #9cf;

@water-line: #00abee;

@waterway-text-repeat-distance: 200;

#water-areas {
  [natural = 'glacier']::natural {
    [zoom >= 5] {
      line-width: 1.0;
      line-color: @glacier-line;
      polygon-fill: @glacier;
      [zoom >= 10] {
        line-dasharray: 4,2;
        line-width: 1.5;
      }
    }
  }

  [waterway = 'dock'],
  [landuse = 'basin'],
  [natural = 'water'],
  [landuse = 'reservoir'],
  [waterway = 'riverbank'] {
    [int_intermittent = 'no'] {
      polygon-fill: @water-color;
      line-color: @water-line;
      line-width: 1;
      [way_pixels >= 4] { polygon-gamma: 0.75; }
      [way_pixels >= 64] { polygon-gamma: 0.6; }
    }
    [int_intermittent = 'yes'] {
      polygon-pattern-file: url('patterns/intermittent_water.svg');
      [way_pixels >= 4] { polygon-pattern-gamma: 0.75; }
      [way_pixels >= 64] { polygon-pattern-gamma: 0.6; }
    }
  }
}

#water-lines-low-zoom {
  [waterway = 'river'][zoom >= 8][zoom < 12] {
    [int_intermittent = 'yes'] {
      line-dasharray: 8,4;
      line-cap: butt;
      line-join: round;
      line-clip: false;
    }
    line-color: @water-line;
    line-width: 0.7;
    [zoom >= 9] { line-width: 1.2; }
    [zoom >= 10] { line-width: 1.6; }
  }
}

#water-lines,
#waterway-bridges {
  [waterway = 'canal'][zoom >= 12],
  [waterway = 'river'][zoom >= 12] {
    // the additional line of land color is used to provide a background for dashed casings
    [int_tunnel = 'yes'] {
      background/line-color: @land-color;
      background/line-width: 2;
      background/line-cap: round;
      background/line-join: round;
    }

    [bridge = 'yes'] {
      [zoom >= 14] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 3;
      }
    }

    water/line-color: @water-line;
    water/line-width: 2;
    water/line-cap: round;
    water/line-join: round;

    [int_tunnel = 'yes'] {
      [zoom >= 13] { background/line-width: 3; }

      water/line-dasharray: 4,2;
      background/line-cap: butt;
      background/line-join: miter;
      water/line-cap: butt;
      water/line-join: miter;
      tunnelfill/line-color: #f3f7f7;
      tunnelfill/line-width: 1;
    }
  }

  [waterway = 'stream'],
  [waterway = 'ditch'],
  [waterway = 'drain'] {
    [int_intermittent != 'yes'][zoom >= 14],
    [zoom >= 14] {
      // the additional line of land color is used to provide a background for dashed casings
      [int_tunnel = 'yes'] {
        background/line-width: 1.5;
        background/line-color: @land-color;
      }
      water/line-width: 1;
      water/line-color: @water-line;

      [bridge = 'yes'] {
        bridgecasing/line-color: black;
        bridgecasing/line-join: round;
        bridgecasing/line-width: 1.5;
        bridgeglow/line-color: white;
        bridgeglow/line-join: round;
        bridgeglow/line-width: 0.5;
      }

      [int_intermittent = 'yes'] {
        water/line-dasharray: 4,3;
        water/line-cap: butt;
        water/line-join: round;
        water/line-clip: false;
      }
    }
  }

}

#water-lines-text {
  [lock = 'yes'][zoom >= 17] {
      text-name: "[lock_name]";
      text-face-name: @oblique-fonts;
      text-placement: line;
      text-fill: @water-text;
      text-spacing: 400;
      text-size: 10;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
  }

  [lock != 'yes'][int_tunnel != 'yes'] {
    [waterway = 'river'][zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @oblique-fonts;
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-spacing: 400;
      text-placement: line;
      text-repeat-distance: @waterway-text-repeat-distance;
      [zoom >= 14] { text-size: 12; }
    }

    [waterway = 'canal'][zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @oblique-fonts;
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: line;
      text-repeat-distance: @waterway-text-repeat-distance;
    }

    [waterway = 'stream'][zoom >= 14] {
      text-name: "[name]";
      text-size: 10;
      text-face-name: @oblique-fonts;
      text-fill: @water-text;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-spacing: 600;
      text-placement: line;
      text-vertical-alignment: middle;
      text-dy: 8;
      text-repeat-distance: @waterway-text-repeat-distance;
    }

    [waterway = 'drain'],
    [waterway = 'ditch'] {
      [zoom >= 14] {
        text-name: "[name]";
        text-size: 10;
        text-face-name: @oblique-fonts;
        text-fill: @water-text;
        text-halo-radius: @standard-halo-radius;
        text-halo-fill: @standard-halo-fill;
        text-spacing: 600;
        text-placement: line;
        text-vertical-alignment: middle;
        text-dy: 8;
        text-repeat-distance: @waterway-text-repeat-distance;
      }
    }
  }
  [natural = 'bay'][zoom >= 14],
  [natural = 'strait'][zoom >= 14] {
    text-name: "[name]";
    text-size: 10;
    text-face-name: @oblique-fonts;
    text-fill: @water-text;
    text-halo-radius: @standard-halo-radius;
    text-halo-fill: @standard-halo-fill;
    text-max-char-angle-delta: 15;
    text-spacing: 400;
    text-placement: line;
    [zoom >= 15] {
      text-size: 12;
    }
  }
}


#text-poly-low-zoom[zoom < 10],
#text-point[zoom >= 10] {
  [feature = 'natural_water'],
  [feature = 'landuse_reservoir'],
  [feature = 'landuse_basin'],
  [feature = 'waterway_dock'],
  [feature = 'natural_strait'],
  [feature = 'natural_bay'] {
    [zoom >= 5][way_pixels > 3000][way_pixels <= 768000],
    [zoom >= 14][way_pixels <= 768000][feature = 'natural_bay'],
    [zoom >= 14][way_pixels <= 768000][feature = 'natural_strait'],
    [zoom >= 17][way_pixels <= 768000] {
      text-name: "[name]";
      text-size: 10;
      text-wrap-width: 25; // 2.5 em
      text-line-spacing: -1.5; // -0.15 em
      [way_pixels > 12000][feature != 'natural_strait'][feature != 'natural_bay'],
      [zoom >= 15][feature = 'natural_strait'],
      [zoom >= 15][feature = 'natural_bay'] {
        text-size: 12;
        text-wrap-width: 37; // 3.1 em
        text-line-spacing: -1.6; // -0.13 em
      }
      [way_pixels > 48000][feature != 'natural_strait'][feature != 'natural_bay'] {
        text-size: 15;
        text-wrap-width: 59; // 3.9 em
        text-line-spacing: -1.5; // -0.10 em
      }
      [way_pixels > 192000][feature != 'natural_strait'][feature != 'natural_bay'] {
        text-size: 19;
        text-wrap-width: 95; // 5.0 em
        text-line-spacing: -0.95; // -0.05 em
      }
      text-fill: @water-text;
      text-face-name: @oblique-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-placement: interior;
    }
  }
}
