<script>
  import Child from "$lib/components/Child.svelte"
  let message = "world"
  const prefix = "Svelte"

  let text = "親コンポーネントから"
  let html = "1<br>2<br>3"
</script>

<h1>Hello, {message} from {prefix}</h1>
<Child {text} {html} />
<style>
  h1{
    color:red;
  }
</style>
