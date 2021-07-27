<template>
  <g-link class="logo" to="/">
    <div class="header-zone">
      <i class="fas fa-arrow-left" style="font-size: 18px"></i>
      <span class="title">News</span>
    </div>
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
@import url('https://fonts.googleapis.com/css2?family=Lato&display=swap');

.header-zone {
  display: flex;
  align-items: center;
}
.title {
  font-size: 19px;
  font-family: 'Lato', sans-serif !important;
}
.logo {
  text-decoration: none;
  color: white !important;
  background-color: #0a73b8;
  font-size: 36px;
  padding: 4px 16px;
  span {
    padding-left: 37px;
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
