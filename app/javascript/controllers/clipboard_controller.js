import { Controller } from "@hotwired/stimulus"
import { checkIcon, clipboardIcon } from "../utils/icons"

class ClipboardController extends Controller {
    static targets = ["text"]

    async copy({params: { content }}) {
        try {
            await navigator.clipboard.writeText(content);
            this.element.innerHTML = checkIcon;
            setTimeout(() => {
                this.element.innerHTML = clipboardIcon;
            }, 2000);
        } catch (err) {
            console.error("Failed to copy text: ", err);
        }
       
    }
}

export default ClipboardController