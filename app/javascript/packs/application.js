import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { classToggle } from '../plugins/navbar_menu';
import '../plugins/show_user_index';
// import { myFunction } from '../plugins/show_user_index';
initMapbox();
classToggle();

