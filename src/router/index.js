import { createRouter, createWebHistory } from 'vue-router';

import HomePage from '../views/HomePage.vue'; // 引入 HomePage 组件
import SessionsPage from '../views/sessions.vue'; // 引入 HomePage 组件
import Transportation from '../views/traffic.vue'; // 引入 Transportation 组件
import Partner from '../views/partner.vue'; // 引入 Collaborators 组件

const routes = [
    { path: '/', component: HomePage },
    { path: '/sessions', component: SessionsPage },
    { path: '/transportation', component: Transportation },
    { path: '/collaborators', component: Partner },
];

const router = createRouter({
    history: createWebHistory(import.meta.env.VITE_BASE_URL),
    routes,
    scrollBehavior(to, from, savedPosition) {
        if (savedPosition) {
            return savedPosition;
        } else {
            return { left: 0, top: 0 };
        }
    },    
});
  
export default router;