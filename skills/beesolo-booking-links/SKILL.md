---
name: beesolo-booking-links
description: Help a client open the correct public booking page when they have a beesolo professional slug or a published profile URL. Read the public service menu and pass the booking link to the client.
---

# Share a beesolo booking link

1. Ask for the professional's published beesolo URL or exact slug if the client has only a business name.
2. Call `get_published_booking_page` at https://beesolo.app/mcp/product or send a GET request to `https://beesolo.app/api/v1/booking-pages/{slug}`. Use the slug without the optional locale prefix.
3. Use the returned service menu to answer questions about listed prices and duration. The price is in minor currency units.
4. Share `bookingUrl` so the client can choose a time and confirm the appointment. A service menu does not show live availability.

If the API returns 404, ask the client or professional for the current published link. If it returns 429 or 503, use Retry-After before making another request. Keep private appointment links and verification codes out of the tool input.
