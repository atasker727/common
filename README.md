## Common Package

Shared utilities, types, and constants used across the NASA Visualizer monorepo packages.

### Purpose
This package serves as the central location for code that's shared between the `api` and `ui` packages, ensuring consistency and reducing duplication.

### Contents

#### Types (`src/types/`)
- **`photoTypes.d.ts`**: Core type definitions for NASA API responses and internal data structures
  - `PhotoOfTheDay`, `MarsPhoto` interfaces
  - `ALLOWED_CAMERA_TYPES` union type for Mars rover cameras
  - `ALLOWED_PHOTO_TYPES` for internal photo categorization
  - NASA API response interfaces (`PhotoOfTheDayResponse`, `MarsPhotoResponse`)

#### Utilities (`src/utils/`)
- **`requestsCore.ts`**: Cancellable HTTP request utilities
  - `cancellableRequestGet()` - GET requests with AbortController support
  - `cancellableRequestPost()` - POST requests with cancellation
  - `getFullURLWithParams()` - URL construction with query parameters
  - Request cancellation for better UX when components unmount

### Scripts
```bash
# Install dependencies (from repo root)
pnpm install

# copy files to adjacent repos & watch for changes
pnpm run dev

# Run linting
pnpm lint-fix
```

### Notes
- This package is not meant to be published to npm
- It's designed for internal use within the monorepo
- Changes here may affect both API and UI packages
- Always test changes in both consuming packages
- This folder exists in this way due to strange behaviour encountered when exporting & using class instances in Typescript 