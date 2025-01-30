<template>
  <div class="h-[50vh] bg-cover bg-center flex flex-col justify-end"
    :style="{ backgroundImage: `url(${backgroundImage})` }">
  </div>

  <div class="px-5 md:px-10 md:py-2 mb-10">
    <div class="flex items-center space-x-3 py-8">
      <div class="border-l-4 border-amber-500 h-6 md:h-8"></div>
      <h1 class="text-2xl md:text-3xl text-amber-500 font-bold">關於 TWNOG</h1>
      <div class="border-r-4 border-amber-500 h-6 md:h-8"></div>
    </div>

    <p class="text-base text-gray-700 px-10 mb-4 md:mb-10">
      TWNOG (Taiwan Network Operators’ Group) 是 ISP 業者、研究員以及相關同好，交流網路維運技術的平台。
      <br>
      我們透過 TWNOG 推動臺灣網際網路的發展以及提升人才培育。網路是一個環環相扣，開放與互連的環境，隨著科技發展與網路所衍生之相關問題日益複雜，凝聚社群是我們的目標之一。
      <br>
      TWNOG 建立網路社群維運技術交流討論、累積國內網路維運人員之技術能量、強化網路維運人員橫向溝通連繫的管道，並與國際其他 NOG 建立合作關係。
    </p>
  </div>
</template>

<script>
import homepageImage from '@/assets/homepage.jpeg';

export default {
  name: 'HomePage',
  data() {
    return {
      backgroundImage: homepageImage,
    };
  },
  methods: {
    prevInfo() {
      this.currentIndex = (this.currentIndex + this.info.length - 1) % this.info.length;
    },
    nextInfo() {
      this.currentIndex = (this.currentIndex + 1) % this.info.length;
    },
    goToEventRegistration() {
      window.location.href = 'https://twnog.kktix.cc/events/2024twnog5';
    },
  },
};
</script>