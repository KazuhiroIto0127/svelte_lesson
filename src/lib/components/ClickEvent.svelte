<script>
  function displayAlert() {
    alert(`イエイ！`)
  }
  function outputConsole() {
    console.log(`こんにちは！`)
  };
</script>

<button on:click={displayAlert} on:click|once={outputConsole}>
  alertマルチ
</button>

<button on:click|once={displayAlert} on:click={outputConsole}>
  console.logマルチ
</button>
