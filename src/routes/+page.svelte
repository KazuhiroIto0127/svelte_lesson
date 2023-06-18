<script>
  import Child from "$lib/components/Child.svelte"
  import ClickEvent from "$lib/components/ClickEvent.svelte";
  import DispatchTest from "$lib/components/DispatcherChild.svelte";
  let message = "world"
  const prefix = "Svelte"

  let text = "親コンポーネントから"
  let html = "1<br>2<br>3"
  let arr = [
    { link: "#1", text: "text01" },
    { link: "#2", text: "text03" },
    { link: "#3", text: "text02" }
  ]
  let obj = {
    imgpath: "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEil4F0c37zeO32I97NAb9K97bmwY0JzXpv2R2kgcbyrWDHKpV07LE1NFuRaQ_e0wRdUIZzG3kdVubrlWeCh4R8J_DwhtgTr_ulwsdyT2-0lmqyXR8sPx4G5uYrndslL_Hxmr0RX96mlgkqDVV4Y_8miWzXaz5gd2ePAwwgP7uKzcggdAw0I64lVQ6oOXQ/s949/eto_usagi_banzai.png",
    text: "text"
  }

  function handleCustomEvent(e) {
    console.log(e.detail.data)
  }
</script>

<DispatchTest on:customClick={handleCustomEvent} />
<ClickEvent />
<h1>Hello, {message} from {prefix}</h1>
<Child {text} {html} {arr} {obj} />
<style>
  h1{
    color:red;
  }
</style>
