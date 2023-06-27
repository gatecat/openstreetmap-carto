import mapnik
import mapnik.printing

osm_xml="../../openstreetmap-carto/osm.xml"

def main():
    cx, cy = (1121388, 6303035)
    phys_width = int(800000*((162.5+4)/162.5))
    phys_height = int(640000*((130+4)/130))
    ratio = phys_height/phys_width
    img_width = int(8000*((162.5+4)/162.5))
    img_height = int(img_width * ratio)

    test = False

    if test:
        cx, cy = (933754, 6265390)
        phys_width //= 4
        phys_height //= 4
        img_width //= 4
        img_height //= 4

    m = mapnik.Map(int(img_width), int(img_height))
    mapnik.load_map(m, osm_xml, False)
    m.resize(img_width, img_height)
    extent = mapnik.Box2d(cx - phys_width / 2, cy - phys_height / 2, cx + phys_width / 2, cy + phys_height / 2)
    m.zoom_to_box(extent)
    if test:
        mapnik.render_to_file(m, "/home/gatecat/map_test_transit.pdf")
    else:
        mapnik.render_to_file(m, "/home/gatecat/map_de_transit.pdf")
    # mapnik.render_to_file(m, "/home/gatecat/map_test.png")

if __name__ == '__main__':
    main()