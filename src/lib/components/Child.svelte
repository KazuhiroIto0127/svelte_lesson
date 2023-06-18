<script>
  /**
  * @desc stringをprops
  * @type {string}
  **/
  export let text

  /**
  * @desc brタグなどhtmlをprops
  * @type {string}
  **/
  export let html

  /**
  * @desc 配列をprops
  * @type {Array<{link:string, text:string}>}
  **/
  export let arr

  /**
  * @desc オブジェクトをprops
  * @type {{imgpath:string, text:string}}}
  **/
  export let obj
</script>

<p class="text">{text}</p>
<p class="html">{@html html}</p>
<ul class="array-list">
  {#each arr as ar,i}
    <li>
      <a href="{ar.link}">
        {ar.text}
      </a>
    </li>
  {/each}
</ul>
<div class="object-card">
  {#if obj.imgpath}
    <img src={obj.imgpath} alt={obj.text}>
  {/if}
  <p class="text">{obj.text}</p>
</div>

