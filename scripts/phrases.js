((query) => {
const items = [...document.querySelectorAll(query)];
const texts = items.map(i => i.innerText);
copy(texts);
})(".dexamp");