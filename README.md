# Resume
Contains my CV in the [JSON Resume](https://jsonresume.org/getting-started) Schema.

## Set Up
Run `npm init`.

Use `npx resume serve --theme <theme> --resume <resume.json>` to
view the HTML rendered JSON in localhost.

Use `npm run export_resumes` to generate resumes from all the `./themes/`

## Structure
* `resume.json`: My current base resume.
* `./themes/<theme>/resume.json`: The base resume altered to present well
  in specific themes. These json are exported as Github artifacts on merge to
  main, using the `npm run export_resumes` command.
