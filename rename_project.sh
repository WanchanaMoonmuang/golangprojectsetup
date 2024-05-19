DEFAULT_PROJECT_NAME="demogo"
NEW_PROJECT_NAME="newdemogo"

echo "Script executed from: ${PWD}"
echo "OLD_PROJECT_NAME: ${DEFAULT_PROJECT_NAME}"
echo "NEW_PROJECT_NAME: ${NEW_PROJECT_NAME}"

# Replace project name in go.mod
sed -i "s/module ${DEFAULT_PROJECT_NAME}/module ${NEW_PROJECT_NAME}/" go.mod
# Replace project name in all import path
find . -name "*.go" -exec sed -i "s/${DEFAULT_PROJECT_NAME}/${NEW_PROJECT_NAME}/g" {} +

# Test build
go mod tidy
go build ./...