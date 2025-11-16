# 📸 Chronio - A Modern Social Media Platform Built with Ruby on Rails

Welcome to **Chronio**! This is a social media application where users can connect, share moments, react to each other’s posts, and engage in discussions. Built with the power of **Ruby on Rails** and the **Devise gem**, Chronio offers a clean and interactive social experience. 🚀

---

## 🌟 Features

- **User Authentication**: Sign up, log in, and edit your account securely with Devise.
- **Posting Content**: Share your thoughts with posts, add images, and express yourself!
- **Interactions**: React to posts and leave comments to engage with the community.
- **Social Feedback**: View reaction counts and comments on any post.
- **Profile Management**: Username, email, and password management.

> ⚙️ **Coming Soon**: Profile pictures and chat requests to connect in real time!

---

## 🎬 Demo

🚀 **Try out the app:** [Click here!](https://chronio.onrender.com/)

---

## 🛠️ Installation

To set up Chronio on your local machine, please follow the steps below:

### Prerequisites

Ensure you have **Ruby** and **Rails** installed on your system.

- **Ruby**: [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- **Rails**: [Install Rails](https://guides.rubyonrails.org/v5.0/getting_started.html)

### Setup

1. **Clone the repository**

   ```bash
   git clone https://github.com/artemisln/chronio.git
   cd chronio
   ```

2. **Configure your Ruby environment (Important!)**

   If you are not using a Ruby version manager like `rbenv` or `rvm`, you might encounter a permission error when installing gems (`Gem::FilePermissionError`). This happens because the system's default Ruby tries to install gems in a protected directory.

   To fix this, you can configure your system to install gems into your home directory. Run these commands:

   ```bash
   # For Bash users (default on many Linux systems)
   echo 'export GEM_HOME="$HOME/.gems"' >> ~/.bashrc
   echo 'export PATH="$HOME/.gems/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

   > **Note**: If you use a different shell like Zsh, replace `~/.bashrc` with `~/.zshrc`. After running the commands, you may need to restart your terminal.

   Next, install the `bundler` gem into this new location:
   ```bash
   gem install bundler
   ```

3. **Install dependencies**

Make sure all necessary gems are installed by running:
```bash
bundle install
```

4. **Set up the database**
Run the following commands to create and migrate your database:
```bash
rails db:create
rails db:migrate
rails db:seed # (optional, to populate with sample data)
```

5. **Start the server**
Use the following command to start the development server:
```bash
bin/dev
```

6. **Access your app**
    Open your web browser and go to http://localhost:3000 to see Chronio in action! 🎉
 
---

## 📝 Usage

Once the server is running:

1. **Sign Up** or **Log In** to your account.
2. **Create Posts** with or without images.
3. **React** and **Comment** on posts to interact with other users.
4. **View Reactions and Comments** on each post for social feedback.

---

## 🧰 Built With

- **Ruby on Rails** - The main framework used
- **Devise** - For authentication management
- **Active Storage** - For handling images in posts
- **Tailwind CSS** - For styling the UI

---

## 🤝 Contributing

Contributions are welcome! Please follow these steps to contribute:

1. **Fork** the project.
2. **Create a feature branch** (`git checkout -b feature/NewFeature`).
3. **Commit your changes** (`git commit -m 'Add some feature'`).
4. **Push to the branch** (`git push origin feature/NewFeature`).
5. **Open a pull request**.

## 💬 Contact

Created by [artemisln](https://github.com/artemisln) with the help of [mgiannopoulos24](https://github.com/mgiannopoulos24) – feel free to reach out!


---

### Show Your Support ❤️

If you find this project helpful, please give it a ⭐ and share it with others!

Happy Coding! 🚀
