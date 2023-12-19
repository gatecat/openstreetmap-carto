@station-color: #e3007f;
@station-line-color: #000;
@station-line-width: 0.75;
@station-text: darken(saturate(@station-color, 15%), 10%);

#stations {
  [railway = 'station'][zoom >= 12] {
      marker-type: ellipse;
      marker-fill: @station-color;
      marker-line-color: @station-line-color;
      marker-line-width: @station-line-width;
      marker-width: 6;
      marker-height: 6;
      marker-clip: false;
      marker-ignore-placement: true;
  }

  [railway = 'halt'] {
    [zoom >= 13] {
      marker-type: ellipse;
      marker-fill: @station-color;
      marker-line-color: @station-line-color;
      marker-line-width: @station-line-width;
      marker-width: 6;
      marker-height: 6;
      marker-clip: false;
      marker-ignore-placement: true;
    }
  }

  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      marker-type: ellipse;
      marker-fill: @station-color;
      marker-line-color: @station-line-color;
      marker-line-width: @station-line-width;
      marker-width: 4;
      marker-height: 4;
      marker-clip: false;
      marker-ignore-placement: true;
    }
  }

}
