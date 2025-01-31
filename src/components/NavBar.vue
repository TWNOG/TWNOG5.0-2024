<template>
  <nav ref="navbar" class="fixed top-0 left-0 right-0 z-50 bg-amber-10 bg-white text-yellow-900 px-10 py-2 border-b-4 border-amber-400">
    <div class="mx-auto flex justify-between items-center">
      <!-- Logo部分 -->
      <img :src="logo" alt="Logo" class="cursor-pointer w-28 h-12" @click="goToHomePage">

      <!-- 導航鏈接 -->
      <div class="hidden md:flex lg:flex space-x-4 whitespace-nowrap">
        <router-link to="/sessions" class="hover:bg-amber-400 rounded-md px-6 py-3">活動議程</router-link>
        <router-link to="/traffic" class="hover:bg-amber-400 rounded-md px-6 py-3">交通方式</router-link>
        <router-link to="/partner" class="hover:bg-amber-400 rounded-md px-6 py-3">合作夥伴</router-link>
      </div>

      <!-- 手機端選單按鈕 -->
      <svg ref="toggle" @click="toggleMenu" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="cursor-pointer md:hidden w-6 h-6">
        <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
      </svg>
    </div>
  </nav>
  
  <!-- 手機版選單 -->
  <div ref="menu" :class="{'hidden': !isMenuOpen, 'flex': isMenuOpen, 'flex-col': isMenuOpen, 'space-y-3': isMenuOpen, 'sticky top-16 z-50': true}" class="md:hidden items-center bg-amber-100 text-yellow-900 border-b-4 border-t-4 border-amber-200 py-3">
    <router-link to="/sessions" class="hover:bg-amber-400 rounded-md px-4 py-2">
      <span class="border-b border-amber-300 py-2 px-5">活動議程</span>
    </router-link>
    <router-link to="/traffic" class="hover:bg-amber-400 rounded-md px-4 py-2">
      <span class="border-b border-amber-300 py-2 px-5">交通方式</span>
    </router-link>
    <router-link to="/partner" class="hover:bg-amber-400 rounded-md px-4 py-2">
      <span class="border-b border-amber-300 py-2 px-5">合作夥伴</span>
    </router-link>
  </div>
</template>

<script>
import logo from '../assets/logo.png';

export default {
  name: 'NavBar',
  data() {
    return {
      logo,
      isMenuOpen: false,
      isEventClick: false,
      isEventHover: false,
    };
  },
  methods: {
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen;
    },
    clickEvent() {
      this.isEventClick = !this.isEventClick;
    },
    mouseEnterEvent() {
      this.isEventHover = true;
    },
    mouseLeaveEvent() {
      this.isEventHover = false;
    },
    handleGlobalClick(e) {
      if (this.$refs.menu && !this.$refs.menu.contains(e.target) && !this.$refs.toggle.contains(e.target)) {
        this.isMenuOpen = false;
        this.isEventClick = false;
      }
    },
    goToHomePage() {
      this.$router.push('/');
      window.scrollTo(0, 0); //回到頁面頂部
    },
  },
  mounted() {
    document.addEventListener('click', this.handleGlobalClick);
    this.$router.afterEach(() => {
      this.isMenuOpen = false;
    });
  },
  beforeDestroy() {
    document.removeEventListener('click', this.handleGlobalClick);
  }
}
</script>
