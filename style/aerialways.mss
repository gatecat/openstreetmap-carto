#aerialways {
  [aerialway = 'cable_car'],
  [aerialway = 'gondola'],
  [aerialway = 'mixed_lift'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #808080;

      dash/line-width: 3;
      dash/line-join: round;
      dash/line-cap: round;
      dash/line-color: black;
      dash/line-dasharray: 0.4,13;
      dash/line-clip: false;
    }
  }

  [aerialway = 'goods'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #808080;

      dash/line-width: 3.5;
      dash/line-join: round;
      dash/line-color: #707070;
      dash/line-dasharray: 6,25;
      dash/line-clip: false;
    }
  }

  [aerialway = 'chair_lift'],
  [aerialway = 'drag_lift'],
  [aerialway = 't-bar'],
  [aerialway = 'j-bar'],
  [aerialway = 'platter'],
  [aerialway = 'rope_tow'],
  [aerialway = 'zip_line'] {
    [zoom >= 12] {
      line/line-width: 1;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #808080;

      dash/line-width: 4;
      dash/line-join: round;
      dash/line-color: black;
      dash/line-dasharray: 1,30;
      dash/line-clip: false;
    }
  }

  [man_made = 'goods_conveyor'] {
    [zoom >= 14] {
      line/line-width: 0.7;
      line/line-join: round;
      line/line-cap: round;
      line/line-color: #999999;

      dash/line-width: 2;
      dash/line-join: round;
      dash/line-color: #999999;
      dash/line-dasharray: 4,6;

    }
  }

}
/*
#text-line {
  [feature = 'aerialway_cable_car'],
  [feature = 'aerialway_gondola'],
  [feature = 'aerialway_mixed_lift'],
  [feature = 'aerialway_goods'],
  [feature = 'aerialway_chair_lift'],
  [feature = 'aerialway_drag_lift'],
  [feature = 'aerialway_t-bar'],
  [feature = 'aerialway_j-bar'],
  [feature = 'aerialway_platter'],
  [feature = 'aerialway_rope_tow'],
  [feature = 'aerialway_zip_line'],
  [feature = 'man_made_pipeline'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #666666;
      text-size: 10;
      text-dy: 4;
      text-spacing: 900;
      text-clip: false;
      text-placement: line;
      text-repeat-distance: 200;
      text-margin: 18;
      text-face-name: @book-fonts;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      [zoom >= 19] {
        text-size: 11;
        text-dy: 5;
      }
      [feature = 'man_made_pipeline'] {
        text-dy: 6;
        [zoom >= 18] { text-dy: 7; }
        [zoom >= 19] { text-dy: 8; }
      }
    }
  }
}
*/
