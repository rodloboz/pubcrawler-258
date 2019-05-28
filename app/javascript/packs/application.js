import 'bootstrap';

import { activateNeonBannerText, smoothScroll } from '../components/home';
import { toggleNavbarBackground } from '../components/navbar';

toggleNavbarBackground();

const homePage = document.querySelector('.pages.home');
if (homePage) {
  activateNeonBannerText();
  smoothScroll();
}
