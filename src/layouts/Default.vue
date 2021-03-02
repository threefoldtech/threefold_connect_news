<template>
  <div id="app">
    <div class="top-bar" v-if="!showLogo"></div>

    <header class="header" v-if="showLogo">
        <Logo/>
    </header>

    <main class="main">
      <slot/>
    </main>

    <footer class="footer">
      <span class="footer__copyright">Copyright © {{ new Date().getFullYear() }}. </span>
    </footer>

  </div>
</template>

<script>
import Logo from '~/components/Logo.vue'

export default {
  props: {
    showLogo: {default: true}
  },
  components: {
    Logo,
  }
}
</script>

<style lang="scss">
.top-bar{
  background: #0A73B8;
  height: 30px;
}
.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  min-height: var(--header-height);
  padding: 0 calc(var(--space) / 2);
  top: 0;
  z-index: 10;
  height: 90px;
  background-color: #0a73b8;

  &__left,
  &__right {
    display: flex;
    align-items: center;
  }

  @media screen and (min-width: 1300px) {
    //Make header sticky for large screens
    position: sticky;
    width: 100%;
  }
}

.main {
  margin: 0 auto;
  padding: 1.5vw 15px 0;
}

.footer {
  display: flex;
  align-items: center;
  justify-content: center;
  padding: calc(var(--space) / 2);
  text-align: center;
  font-size: .8em;

  > span {
    margin: 0 .35em;
  }

  a {
    color: currentColor;
  }
}

body {
  background: url("~@/assets/images/bg.svg");
  background-position: center;
  background-size: cover;
}
</style>
