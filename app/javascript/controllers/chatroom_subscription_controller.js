import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { chatroomId: Number, userId: Number }
  static targets = ["messages", "scroll"]

  connect() {
    console.log("we are connected!");
    console.log(this.userIdValue)
    this.channel = createConsumer().subscriptions.create(
      { channel: "ChatroomChannel", id: this.chatroomIdValue },
      { received: data => this.insertMessageAndScrollDown(data) }
    );
  }

  insertMessageAndScrollDown(data) {
    // let div = document.createElement('div');
    // div.innerHTML = data.trim();
    var div = new DOMParser().parseFromString(data, 'text/html').body.childNodes[0]
    console.log(div)
    console.log(div.dataset.user)
    if(this.userIdValue != div.dataset.user){
      div.classList.remove('chat-right')
      div.classList.add('chat-left')
    }
    // this.messagesTarget.insertAdjacentHTML("beforeend", data);
    this.messagesTarget.appendChild(div)
    this.scrollTarget.scrollTo(0, this.scrollTarget.scrollHeight);
  }

  resetForm(event) {
    event.target.reset();
  }

}
