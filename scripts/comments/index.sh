API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts/1/comments"
TOKEN="BAhJIiUzZmVhZWYzMDlmZjgzNDkyMmFiMDI5NmNjYWVhNDY2OAY6BkVG--9c1670862f52cdaa3e8527daffe2b9ba07252214"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Content_Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"
