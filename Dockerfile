FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN npm install -g firecrawl-mcp
RUN npm install -g @modelcontextprotocol/server-brave-search
RUN npm install -g @adenot/mcp-google-search

# Revert to the node user for security purposes
USER node
