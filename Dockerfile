# Container image that runs your code
FROM ortussolutions/commandbox

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]