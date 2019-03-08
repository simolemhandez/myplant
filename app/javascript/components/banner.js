import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Louez des plantes.......", "Et passez au vert !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
