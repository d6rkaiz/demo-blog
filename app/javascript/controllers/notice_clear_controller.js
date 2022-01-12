import { Controller } from "@hotwired/stimulus"
import { FetchRequest, get } from "@rails/requestjs"

export default class extends Controller {
  connect() {
    setTimeout(() => {
      this.dismiss();
    }, 5000);
  }

  dismiss() {
    const request = new FetchRequest("get", '/notice_clear', {responseKind: "turbo-stream"})
    const response = request.perform()
    if (response.ok) {
    }
  }
}
