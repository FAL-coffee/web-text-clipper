<template>
  <div>
    <p>{{ defaultText }}</p>
  </div>
</template>

<script lang="ts">
export default {
  name: "HelloWorld",
  mounted() {
    chrome.runtime.sendMessage({});
  },
  computed: {
    defaultText() {
      return chrome.i18n.getMessage("extName");
    },
  },
};
</script>

<style scoped>
p {
  font-size: 20px;
}
</style>
