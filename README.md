# lokaler-kaufen-website
This is the informational website of https://lokaler.kaufen. It is a static site rendered with [Hugo](https://gohugo.io).

It uses a modified [fork](./themes/navigator-hugo/) of the navigator-hugo theme, [originally](https://themes.gohugo.io/navigator-hugo/) by theme-fisher.

## Development
A good starting point is the `config.toml` file. Most of the text content is in the `data`-directory. Some titles and link names are in the `i18n` directory.
Subpages can be found in the `content`-directory. You can create new pages using the `hugo new content/pagename.md`-command. See more about how to use Hugo in the [official documentation](https://gohugo.io/getting-started/quick-start/).

While you're modifying the page, you can get a live preview using `hugo server -D`. The `-D` parameter includes draft pages.

Before deploying, make sure you set all complete pages to `draft: false` in their header.

## Deployment
Users can render the page and deploy the site using `./deploy username`. The user must be part of the `deployment` group.
