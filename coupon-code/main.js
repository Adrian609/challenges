let text = document.getElementById('click-here');

text.addEventListener('click', () => {
  let coupon = '1234567890.';
  text.innerHTML = coupon;
});
