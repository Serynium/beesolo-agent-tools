# beesolo agent tools

Read Solo pricing, find a public booking link by the professional’s exact slug, or search beesolo’s setup guides. beesolo is appointment scheduling for independent barbers and salon professionals who run one shop.

## Run the examples

Open a shell with curl 7.76 or newer. The public endpoints accept anonymous requests.

```sh
sh examples/get-solo-plan.sh
sh examples/look-up-booking-page.sh YOUR_PUBLISHED_SHOP_SLUG
sh examples/initialize-product-mcp.sh
```

Replace `YOUR_PUBLISHED_SHOP_SLUG` with the slug from a link the professional supplied. The booking lookup returns the public service menu and `bookingUrl`. Share that URL so the client can choose a time and confirm. If the lookup returns `NOT_FOUND`, check that the slug matches a published page.

## Connect an MCP client

Choose Streamable HTTP and enter the server URL:

| Server | URL | Use it to |
| --- | --- | --- |
| Product | `https://beesolo.app/mcp/product` | Read the Solo plan or look up a booking page by slug. |
| Documentation | `https://beesolo.app/mcp/docs` | Search and read public setup guides. |

The initialization example prints the server information. An MCP client continues the handshake and can then list and call tools. The [MCP setup page](https://beesolo.app/mcp) links to both server cards and their registry entries.

## Agent skills

- [Share a booking link](skills/beesolo-booking-links/SKILL.md)
- [Guide a professional through setup](skills/beesolo-setup/SKILL.md)

Use the [developer quickstart](https://beesolo.app/developers#quickstart) and [OpenAPI specification](https://beesolo.app/openapi.json) for current API contracts. Report product, billing, or account questions through [beesolo support](https://beesolo.app/contact).
