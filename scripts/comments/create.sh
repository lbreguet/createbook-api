API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/posts/1/comments"
TOKEN="BAhJIiVjZGMwNGUwYWU2YTA5ZWQ0MWNiZDY5ZGE1M2M3Zjc2MQY6BkVG--716c07784a140348df7a4ccc25118e6a85527888"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content_Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "comment": {
      "body": "it worked"
    }
  }'
