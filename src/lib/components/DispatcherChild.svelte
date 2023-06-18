<script>
  import { createEventDispatcher } from "svelte";
  const dispatch = createEventDispatcher();

  function handleClick(){
    dispatch("customClick", {data: "子コンポーネントからだよ!"});
  }
</script>

<div>
  <button on:click={handleClick}>子からだよ</button>
</div>
