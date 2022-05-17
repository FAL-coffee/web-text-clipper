// browser.runtime.onMessage.addListener(function (request, sender, sendResponse) {
//   console.log('Hello from the background')
// })
browser.runtime.onMessage.addListener(function () {
  console.log('Hello from the background')
})
