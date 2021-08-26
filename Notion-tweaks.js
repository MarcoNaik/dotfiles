document.addEventListener('click', () => {
  //const attempt_interval = setInterval(clearPlus, 500);
  //async function clearPlus() {
    //if (
    //  !document.querySelector('.notion-frame') ||
    //  !document.querySelector('.notion-sidebar') ||
    //  !document.querySelector('.notion-topbar') ||
    //  document.querySelectorAll('.notion-gallery-view .notion-selectable > [role=button]').length<2){
    //  return;
    //}
    //clearInterval(attempt_interval);

    const galleries = document.querySelectorAll('.notion-gallery-view');
    for(var i=0; i<galleries.length; i++) {
      const child = galleries[i].children[0].children[0];
      if (child.querySelectorAll('.notion-collection-item').length >= 1){
        const plusBtn = child.querySelectorAll(':scope > [role="button"]')[0];
        plusBtn.style.display = "none";
      }
    }
  //}
});
