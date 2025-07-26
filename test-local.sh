#!/bin/bash
# Local testing script for Homebrew formula

echo "🧪 Testing RedmineCLI Homebrew formula locally..."

# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo "❌ Homebrew is not installed. Please install it first."
    exit 1
fi

# Save current directory
CURRENT_DIR=$(pwd)

# Create a temporary tap
echo "📦 Creating temporary local tap..."
TEMP_TAP="local/temp-redmine-test"
brew tap-new $TEMP_TAP &> /dev/null || true

# Copy formula to the temporary tap
echo "📋 Copying formula to temporary tap..."
cp Formula/redmine.rb $(brew --repository)/Library/Taps/local/homebrew-temp-redmine-test/Formula/

# Test installation
echo "🔧 Testing installation..."
if brew install $TEMP_TAP/redmine; then
    echo "✅ Installation successful!"
    
    # Test the command
    echo "🏃 Testing redmine command..."
    if redmine --version; then
        echo "✅ Command execution successful!"
    else
        echo "❌ Command execution failed!"
    fi
    
    # Run brew test
    echo "🧪 Running brew test..."
    if brew test $TEMP_TAP/redmine; then
        echo "✅ Brew test passed!"
    else
        echo "❌ Brew test failed!"
    fi
    
    # Audit the formula
    echo "📝 Running brew audit..."
    if brew audit --strict $TEMP_TAP/redmine; then
        echo "✅ Brew audit passed!"
    else
        echo "⚠️  Brew audit has warnings"
    fi
    
    # Cleanup
    echo "🧹 Cleaning up..."
    brew uninstall $TEMP_TAP/redmine || true
else
    echo "❌ Installation failed!"
fi

# Remove temporary tap
brew untap $TEMP_TAP &> /dev/null || true

echo "✨ Local testing complete!"