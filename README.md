# SafePassApp

## Local Development Setup

1. **Clone the repository:**
	```bash
	git clone https://github.com/LukasMalyszko/SafePassApp.git
	cd SafePassApp
	```

2. **Install Ruby and Node.js dependencies:**
	- Install Ruby (version 3.3.0) and Node.js (see `.node-version` for version).
	- Install PostgreSQL and ensure it is running.
	- Install required gems:
	  ```bash
	  bundle install
	  ```
	- Install required JavaScript packages:
	  ```bash
	  yarn install
	  ```

3. **Set up the database:**
	```bash
	bin/rails db:setup
	```

4. **Set up environment variables for encryption:**
	The app uses Active Record Encryption. Set the following environment variables (example values):
	```bash
	export ACTIVE_RECORD_ENCRYPTION_PRIMARY_KEY=your_primary_key
	export ACTIVE_RECORD_ENCRYPTION_DETERMINISTIC_KEY=your_deterministic_key
	export ACTIVE_RECORD_ENCRYPTION_KEY_DERIVATION_SALT=your_salt
	```

5. **Start the development server:**
	```bash
	bin/dev
	```
	This will start Rails, JS, and CSS watchers (see `Procfile.dev`).

6. **Open the app:**
	Visit [http://localhost:3001](http://localhost:3001) in your browser.

## Production

The app is deployed at: [https://safepassapp.fly.dev/](https://safepassapp.fly.dev/)

## Useful Scripts

- Build JS: `yarn build`
- Build CSS: `yarn build:css`
- Watch CSS: `yarn watch:css`

## Main Dependencies

**Ruby Gems:**
- rails (~> 8.0.2)
- devise (~> 4.9)
- pg
- jsbundling-rails
- cssbundling-rails
- turbo-rails
- stimulus-rails
- jbuilder
- jwt (~> 3.1)

**JavaScript:**
- @hotwired/stimulus
- @hotwired/turbo-rails
- bootstrap
- bootstrap-icons
- sass
- postcss, autoprefixer

See `Gemfile` and `package.json` for full lists.