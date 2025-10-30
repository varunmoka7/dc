# MCP Servers Configuration Setup

This document contains all MCP server configurations for Cursor IDE. Use this to replicate the setup on another laptop.

## Quick Setup Instructions

1. **Clone this repo** on your new laptop
2. **Install Cursor IDE** if not already installed
3. **Copy the configuration** below into your `~/.cursor/mcp.json` file
4. **Add your API keys/tokens** (see [Required API Keys](#required-api-keys) section)
5. **Restart Cursor**

---

## MCP Configuration File Location

**macOS/Linux:** `~/.cursor/mcp.json`
**Windows:** `%USERPROFILE%\.cursor\mcp.json`

---

## Complete MCP Configuration

Copy this entire JSON configuration to your `~/.cursor/mcp.json` file:

```json
{
  "mcpServers": {
    "shadcn-ui": {
      "command": "npx",
      "args": [
        "@jpisnice/shadcn-ui-mcp-server"
      ],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "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"
      }
    },
    "byterover-mcp": {
      "url": "https://mcp.byterover.dev/mcp?machineId=1f06c971-83b3-6400-aa77-eff685667af9"
    },
    "supabase": {
      "command": "npx",
      "args": [
        "-y",
        "@supabase/mcp-server-supabase@latest",
        "--read-only",
        "--project-ref=hiplsgbyxbalukmejxaq"
      ],
      "env": {
        "SUPABASE_ACCESS_TOKEN": "YOUR_SUPABASE_TOKEN_HERE"
      }
    },
    "firecrawl-mcp": {
      "command": "npx",
      "args": [
        "-y",
        "@iflow-mcp/firecrawl-mcp"
      ],
      "env": {
        "FIRECRAWL_API_KEY": "fc-9f0a8247310449dc88e0cdeb4adf5d85"
      }
    },
    "GitKraken": {
      "command": "/Users/apple/Library/Application Support/Cursor/User/globalStorage/eamodio.gitlens/gk",
      "type": "stdio",
      "name": "GitKraken",
      "args": [
        "mcp",
        "--host=cursor",
        "--source=gitlens",
        "--scheme=cursor"
      ],
      "env": {}
    },
    "web-to-mcp": {
      "url": "https://web-to-mcp.com/mcp/4351c44e-0427-4d39-8e35-c829af7db4ec/"
    },
    "context7": {
      "url": "https://mcp.context7.com/mcp",
      "headers": {
        "Authorization": "ctx7sk-2b4ec340-a593-4cae-ac4a-8895c0bc7fc8"
      }
    }
  }
}
```

---

## Required API Keys

### 1. GitHub Personal Access Token (for shadcn-ui)

**How to get it:**
1. Go to https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Give it a name like "Cursor MCP - shadcn-ui"
4. Select scopes: `repo` (at minimum)
5. Generate and copy the token
6. Replace `YOUR_GITHUB_TOKEN_HERE` in the config

### 2. Supabase Access Token

**How to get it:**
1. Go to your Supabase project: https://supabase.com/dashboard/project/hiplsgbyxbalukmejxaq
2. Click on your profile → Account Settings
3. Go to "Access Tokens"
4. Generate a new token or use existing one
5. Replace `YOUR_SUPABASE_TOKEN_HERE` in the config

**Note:** Project reference `hiplsgbyxbalukmejxaq` is already configured in the setup.

### 3. Firecrawl API Key

**Status:** Already included in config: `fc-9f0a8247310449dc88e0cdeb4adf5d85`

This key is already in the configuration. If you need a new one:
1. Go to https://firecrawl.dev
2. Sign up/login
3. Get your API key from dashboard
4. Replace if needed

---

## MCP Servers Overview

### 1. **byterover-mcp** (Knowledge Management)
- **Purpose:** Store and retrieve coding knowledge, patterns, and solutions
- **Type:** URL-based service
- **Setup:** No additional configuration needed (URL is pre-configured)

### 2. **supabase** (Database Operations)
- **Purpose:** Database management, SQL execution, migrations
- **Type:** NPX package (`@supabase/mcp-server-supabase`)
- **Mode:** Read-only access
- **Requires:** Supabase Access Token

### 3. **firecrawl-mcp** (Web Scraping)
- **Purpose:** Web scraping, content extraction, search capabilities
- **Type:** NPX package (`@iflow-mcp/firecrawl-mcp`)
- **Requires:** Firecrawl API Key

### 4. **GitKraken** (Git Operations)
- **Purpose:** Advanced Git operations through GitLens
- **Type:** Local binary
- **Note:** Path may differ on new laptop - see [GitKraken Setup](#gitkraken-special-setup)

### 5. **web-to-mcp** (Web Capture)
- **Purpose:** Capture and reference web content
- **Type:** URL-based service
- **Setup:** No additional configuration needed

### 6. **context7** (Library Documentation)
- **Purpose:** Access up-to-date library documentation
- **Type:** URL-based service with API key
- **Requires:** Authorization header (already configured)

### 7. **shadcn-ui** (UI Components)
- **Purpose:** Access shadcn/ui component library
- **Type:** NPX package (`@jpisnice/shadcn-ui-mcp-server`)
- **Requires:** GitHub Personal Access Token

---

## GitKraken Special Setup

The GitKraken MCP server path is OS and installation-specific.

**Current path (macOS):**
```
/Users/apple/Library/Application Support/Cursor/User/globalStorage/eamodio.gitlens/gk
```

**On new laptop:**
1. Install GitLens extension in Cursor
2. The `gk` binary should be automatically installed
3. Update the path in `mcp.json` to match your username:
   - macOS: `/Users/YOUR_USERNAME/Library/Application Support/Cursor/User/globalStorage/eamodio.gitlens/gk`
   - Windows: `%APPDATA%\Cursor\User\globalStorage\eamodio.gitlens\gk.exe`
   - Linux: `~/.config/Cursor/User/globalStorage/eamodio.gitlens/gk`

---

## Step-by-Step Setup on New Laptop

### Step 1: Clone Repository
```bash
git clone [your-repo-url] ditch-carbon
cd ditch-carbon
```

### Step 2: Create MCP Config File
```bash
# macOS/Linux
touch ~/.cursor/mcp.json

# Windows
# Create file at %USERPROFILE%\.cursor\mcp.json
```

### Step 3: Copy Configuration
- Open this document
- Copy the JSON configuration from [Complete MCP Configuration](#complete-mcp-configuration)
- Paste into `~/.cursor/mcp.json`

### Step 4: Add API Keys
Replace these placeholders with your actual keys:
- `YOUR_GITHUB_TOKEN_HERE` → Your GitHub Personal Access Token
- `YOUR_SUPABASE_TOKEN_HERE` → Your Supabase Access Token

### Step 5: Update GitKraken Path (if on different OS)
- Update the `command` path in the `GitKraken` section
- Replace `apple` with your actual username

### Step 6: Restart Cursor
- Close Cursor completely
- Reopen Cursor
- MCP servers should now be available

---

## Verification

After setup, verify MCP servers are working:

1. Open Cursor
2. Look for MCP indicators in the IDE
3. Try using a command that requires MCP (like byterover-retrieve-knowledge)
4. Check Cursor logs if something doesn't work

---

## Troubleshooting

### MCP servers not showing up
- Check if `mcp.json` is in the correct location
- Verify JSON syntax is valid (no trailing commas, proper quotes)
- Restart Cursor completely

### "Command not found" errors
- Install Node.js if not already installed
- NPX packages are downloaded on first use
- Check internet connection

### GitKraken path issues
- Make sure GitLens extension is installed
- Check if the path exists on your system
- Update path to match your OS and username

### API key errors
- Verify keys are correctly copied (no extra spaces)
- Check if tokens are still valid
- Regenerate keys if expired

---

## Notes

- **Firecrawl API Key** is already included in the config (same key can be used)
- **byterover-mcp** machine ID is pre-configured and should work on new laptop
- **web-to-mcp** and **context7** are URL-based and require no additional setup
- **GitKraken** requires GitLens extension to be installed first

---

## Security Note

⚠️ **Important:** This document contains API keys and tokens. Do NOT commit the actual `mcp.json` file with real keys to a public repository. This markdown file serves as a template with instructions on where to get the keys.

Current Firecrawl key is included for convenience, but consider regenerating if security is a concern.

---

## Last Updated

**Date:** October 30, 2025  
**Laptop:** MacBook (apple)  
**Cursor Version:** Latest

---

## Quick Command Reference

```bash
# View current MCP config
cat ~/.cursor/mcp.json

# Edit MCP config
nano ~/.cursor/mcp.json
# or
code ~/.cursor/mcp.json

# Backup current config
cp ~/.cursor/mcp.json ~/.cursor/mcp.json.backup

# Restore from backup
cp ~/.cursor/mcp.json.backup ~/.cursor/mcp.json
```

