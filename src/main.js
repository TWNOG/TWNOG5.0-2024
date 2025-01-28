import { createApp } from "vue"; //導入 createApp 函数
import App from "./App.vue"; //導入 App 组件
import VueGtag from "vue-gtag";
import './index.css';
import router from './router';

createApp(App)
  .use(VueGtag, {
    config: { id: "G-DHCCF4GBPW" }
  })
  .use(router)
  .mount('#app');
