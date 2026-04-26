# Chronio - TODO

## Project Overview

**Chronio** is a Ruby on Rails 7 social media platform with:
- Ruby 3.3.5, Rails 7.x
- PostgreSQL database
- Tailwind CSS for styling
- Devise for authentication
- Active Storage for image uploads
- Hotwire (Turbo + Stimulus) for interactivity

---

## Completed Features

### Core Infrastructure
- [x] Rails 7 application setup
- [x] PostgreSQL database configuration
- [x] Tailwind CSS integration
- [x] Devise authentication (sign up, login, password reset)
- [x] Internationalization (en, es, gr, fr locales)
- [x] PWA support (manifest, service worker)
- [x] Nix flake development environment

### User Features
- [x] User registration and login
- [x] User profile with username
- [x] Edit account (Devise built-in)
- [x] Follow/unfollow system

### Social Features
- [x] Create posts with text (ActionText rich text)
- [x] Attach images to posts (Active Storage)
- [x] Comment on posts
- [x] React to posts (thumbs up, heart, laughing)
- [x] Feed display (all posts)

### Additional Features
- [x] Jobs board (create, edit, view jobs)
- [x] Static pages (home, about, tos, privacy policy, network, messages)
- [x] Settings page

### Testing
- [x] Model tests (User, Post, Comment, Reaction, Job)
- [x] Controller tests (Pages, Feed, Settings, Posts, Jobs)
- [x] System tests (Posts)
- [x] Test helpers and fixtures

---

## Pending Tasks

### High Priority

#### 1. Feed Should Show Only Followed Users' Posts
**Location:** `app/controllers/feed_controller.rb:3`
**Issue:** Currently shows all posts. Should filter to only show posts from followed users.
```ruby
# Current (showing all posts)
@posts = Post.all.order(created_at: :desc)

# Should be something like:
@posts = Post.where(user: current_user.following).or(Post.where(user: current_user)).order(created_at: :desc)
```

#### 2. Add User Profile Pictures (Avatar)
**Reference:** README.md mentions "Coming Soon: Profile pictures"
- Add `avatar` attachment to User model
- Update user views to display avatar
- Add avatar upload to Devise registration/edit forms

#### 3. Fix Reaction Model
**Location:** `app/models/reaction.rb` (needs verification)
**Issue:** Need to verify reactions properly enforce unique user+post constraint
- One reaction per user per post
- Should only allow valid reaction types

#### 4. Add Tests for Follow System
**Location:** `test/models/`
- No tests for Follow model
- No tests for User#follow, User#unfollow, User#following? methods

#### 5. Fix Feed Controller Tests
**Location:** `test/controllers/feed_controller_test.rb`
- Verify authenticated users see feed
- Verify unauthenticated users are redirected

### Medium Priority

#### 6. Add User Profile Page Improvements
**Location:** `app/views/users/show.html.erb`
- Show user's posts
- Show follower/following counts
- Add follow/unfollow button (for other users)
- Add edit profile button (for own profile)

#### 7. Optimize Image Processing
**Location:** `app/models/post.rb`
- Add image size validation
- Add image content type validation
- Consider adding thumbnail generation

#### 8. Add Model Validations
- Post: presence validation on body (if required)
- Comment: presence validation on body
- Job: presence validation on name, description, location

#### 9. Add More System Tests
- User registration flow
- Follow/unfollow flow
- Comment creation flow

#### 10. Locale Improvements
- Verify all locales (en, es, gr, fr) are complete
- Add missing translations

### Low Priority

#### 11. Real-time Chat (Coming Soon from README)
- Requires WebSocket setup (ActionCable)
- Could use Redis for production

#### 12. Search Functionality
- Search users
- Search posts

#### 13. Notifications System
- Notify users on new followers
- Notify users on new comments
- Notify users on new reactions

#### 14. Direct Messages
- From README: "chat requests to connect in real time"

#### 15. Performance Optimization
- Add pagination to feed
- Add pagination to user posts
- Consider caching strategies

---

## Development Guidelines (from AGENTS.md)

When working on any task:

1. **Think Before Coding**
   - State assumptions explicitly
   - If unclear, ask questions
   - Consider simpler approaches

2. **Simplicity First**
   - Minimum code that solves the problem
   - No speculative features
   - If 200 lines could be 50, rewrite

3. **Surgical Changes**
   - Touch only what must be changed
   - Match existing code style
   - Remove orphaned code from changes

4. **Goal-Driven Execution**
   - Define success criteria before starting
   - Write tests first, then implement
   - Verify with tests before calling done

---

## Testing Commands

```bash
# Run all tests
bin/rails test

# Run specific test file
bin/rails test test/models/user_test.rb

# Run system tests
bin/rails test:system

# Run with coverage (if configured)
bin/rails test:coverage
```

---

## Database Commands

```bash
# Create database
bin/rails db:create

# Run migrations
bin/rails db:migrate

# Seed database
bin/rails db:seed

# Reset database
bin/rails db:reset
```

---

## Notes

- Ruby version: 3.3.5
- Rails version: 7.x (check Gemfile)
- Database: PostgreSQL
- Deployment: Render.com
- Current locale support: en, es, gr, fr