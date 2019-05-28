// import './application.css';
import 'bootstrap';

import ReallySmoothScroll from 'really-smooth-scroll';
import { activateNeonBannerText, smoothScroll } from '../components/home';
import { toggleNavbarBackground } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';

toggleNavbarBackground();
initMapbox();
initAutocomplete();

const homePage = document.querySelector('.pages.home');
if (homePage) {
  ReallySmoothScroll.shim();
  activateNeonBannerText();
  smoothScroll();
}
