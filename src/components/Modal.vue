<template>
    <div v-if="visible" class="modal-overlay" @click.self="close">
        <div class="modal-content">
            <slot />
            <button class="modal-close" @click="close">
                <CloseIcon/>
            </button>
        </div>
    </div>
</template>

<script>
import CloseIcon from './icons/CloseIcon.vue';

export default {
    components: {
        CloseIcon
    },
    props: {
        visible: { type: Boolean, required: true }
    },
    emits: ['close'],
    methods: {
        close() {
            this.$emit('close');
        }
    }
};
</script>

<style scoped>
.modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(0, 0, 0, 0.5);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 1000;
}

.modal-content {
    background: #fff;
    padding: 2rem;
    border-radius: 8px;
    min-width: 300px;
    max-width: 70vw;
    max-height: 80vh;
    position: relative;
    overflow: auto;
    text-align: left;
}

.modal-close {
    position: absolute;
    top: 8px;
    right: 8px;
    background: none;
    border: none;
    font-size: 1.2rem;
    cursor: pointer;
}
</style>