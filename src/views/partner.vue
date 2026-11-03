<template>
    <div class="px-5 md:px-10 md:py-2">
        <div class="flex items-center space-x-3 py-8">
            <div class="border-l-4 border-amber-500 md:h-6 md:h-8"></div>
            <h1 class="text-2xl md:text-3xl text-amber-500 font-bold">合作夥伴</h1>
            <div class="border-r-4 border-amber-500 md:h-6 md:h-8"></div>
        </div>
    </div>

    <div v-for="(partners, level) in groupedPartners" :key="level" :class="getBackgroundClass(level)">
        <div class="px-8 md:px-16 py-8 md:py-10">
            <h2 class="text-xl md:text-2xl text-amber-400 font-bold mb-6">{{ level }}</h2>
            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
                <div v-for="partner in partners" :key="partner.name" class="text-center">
                    <a :href="partner.url" target="_blank"
                        class="block border border-gray-200 p-4 rounded-lg hover:shadow-md bg-white h-32 flex items-center justify-center">
                        <img :src="getLogoPath(partner.img)" :alt="partner.name" class="max-h-full object-contain" />
                    </a>
                </div>
            </div>

        </div>
    </div>
</template>

<script>
export default {
    name: 'Partner',
    data() {
        return {
            sponsorImages: {}, // 動態載入的圖片對象
            partners: [
                {
                    level: '指導單位', companies: [
                        { name: '數位發展部', img: 'MODA.jpg' }
                    ]
                },
                {
                    "level": "白金級贊助商 Platinum",
                    "companies": [
                        { "name": "CHT", "img": "CHT.jpg" },
                        { "name": "CHT-CDN", "img": "CHT-CDN.jpg" },
                        { "name": "JPIX", "img": "JPIX.jpg" },
                        { "name": "opengear", "img": "opengear.jpg" },
                        { "name": "isoc-fun", "img": "isoc-fun.png" }
                    ]
                },
                {
                    "level": "黃金級贊助商 Gold",
                    "companies": [
                        { "name": "APNIC", "img": "APNIC.png" },
                        { "name": "AWS", "img": "aws.png" },
                        { "name": "ODC", "img": "ODC.png" },
                        { "name": "BBIX", "img": "BBIX.png" },
                        { "name": "EPOCH", "img": "ampyrean.jpg" }
                    ]
                },
                {
                    "level": "銀級贊助商 Silver",
                    "companies": [
                        { "name": "Equinix", "img": "Equinix.jpg" },
                        { "name": "ICANN", "img": "ICANN.jpg" },
                        { "name": "SUNeVision", "img": "SUNeVision.jpg" },
                        { "name": "Vantage", "img": "Vantage.jpg" },
                        { "name": "w.media", "img": "Blue.png" }
                    ]
                },
                {
                    "level": "工作坊 Workshop",
                    "companies": [
                        { "name": "Google", "img": "Google.svg" },
                        { "name": "APNIC", "img": "APNIC.png" }
                    ]
                },
                {
                    "level": "協辦單位",
                    "companies": [
                        { "name": "OCF 開放文化基金會", "img": "ocf.png" },
                        { "name": "Internet Society - Taiwan Taipei Chapter", "img": "isocTP.jpg" },
                        { "name": "TSTA 臺灣智慧技術協會", "img": "TSTA.jpg" }
                    ]
                }
            ]
        };
    },
    computed: {
        groupedPartners() {
            return this.partners.reduce((acc, partner) => {
                acc[partner.level] = partner.companies;
                return acc;
            }, {});
        },
    },
    methods: {
        getBackgroundClass(level) {
            return ['白金級贊助商 Platinum', '銀級贊助商 Silver', '協辦單位'].includes(level) ? 'bg-white' : 'bg-gray-100';
        },
        getLogoPath(fileName) {
            return `${import.meta.env.BASE_URL}assets/sponsors/${fileName}`;
        },
    }
};
</script>

<style scoped>
img {
    max-width: 150px;
    height: auto;
}
</style>