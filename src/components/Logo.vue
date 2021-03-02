<template>
  <g-link class="logo" to="/">
    <i class="fas fa-arrow-left"></i> <span>News</span>
  </g-link>
</template>

<static-query>
query {
metadata {
siteName
}
}
</static-query>

<style lang="scss">
.logo {
  text-decoration: none;
  color: white !important;
  font-size: .9em;
  background-color: #0a73b8;
  font-size: 36px;
  padding: 4px 16px;
  span {
    padding-left: 20px;
  }
  &__image {
    vertical-align: middle;
    border-radius: 99px;
    height: 40px;
    width: 40px;
    margin-right: .5em;
  }
}
</style>
