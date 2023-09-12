<template>
    <img alt="Vue logo" src="./../assets/logo.png" />
    <UsePinia />
    <br />
    <router-link to="/login">点击跳转至login</router-link>
    <br /><br />
    <router-link to="/user">点击跳转至user页面</router-link>
    <br /><br />
    <router-link to="/vueuse">点击跳转至vueuse页面</router-link>
</template>

<script setup>
    import { defineComponent, ref, onActivated, onMounted } from 'vue';
    import UsePinia from '@/components/UsePinia.vue';
    import DiffJson from 'diff-json';
    import { diffJson } from 'diff';

    const oldObj = {
        name: 'joe',
        age: 55,
        coins: [2, 5],
        children: [
        {name: 'kid1', age: 1},
        {name: 'kid2', age: 2}
    ]};
 
    const newObj = {
        name: 'smith',
        coins: [2, 5, 1],
        children: [
        {name: 'kid3', age: 3},
        {name: 'kid1', age: 0},
        {name: 'kid2', age: 2}
        ]};
    
    onMounted(() => {
        let data = DiffJson.diff(oldObj, newObj)
        console.log("🚀 ~ file: index.vue:37 ~ onMounted ~ data:", data)
        let diffData = diffJson(oldObj, newObj)
        // console.log("🚀 ~ file: index.vue:40 ~ onMounted ~ diffData:", diffData)
    })
    onActivated(() => {
    })
</script>
