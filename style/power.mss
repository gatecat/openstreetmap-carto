@power-line-color: #888;

#power-line {
  [zoom >= 14] {
    line-width: 0.5;
    line-color: @power-line-color;
    [zoom >= 15] {
      line-width: 0.6;
    }
  }
}



#power-towers {
  [power = 'tower'] {

    [zoom >= 15] {
      marker-file: url('symbols/man_made/power_tower.svg');
      marker-width: 5;
    }

  }
}
