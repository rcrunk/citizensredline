package org.citizensredline.ajax

/**
 * Encapsulate a JSON response to the browser.
 *
 * @author rc
 */
class JsonResponse {
  def status
  def message
  def payload

  JsonResponse(status, message) {
    this.status = status
    this.message = message
  }

  JsonResponse(status, message, payload) {
    this(status, message)
    this.payload = payload
  }
}
