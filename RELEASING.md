
# Releasing a New Version

This guide describes how to release a new version of the iOS SDK through Swift Package Manager (SPM).

Each release requires the following to match:

1. SDK version in `Package.swift`
2. Git tag
3. SHA-256 checksum of the XCFramework ZIP
4. GitHub Release with the updated ZIP asset

## Step 1 — Replace the XCFramework ZIP

Replace the existing `ShuftiPro.xcframework.zip` with the new SDK build.

Ensure the ZIP contains `ShuftiPro.xcframework` at its root.

Verify the archive:

```bash
unzip -l ShuftiPro.xcframework.zip | head
```

## Step 2 — Calculate the Checksum

Run the following command to calculate the checksum of the updated ZIP:

```bash
swift package compute-checksum ShuftiPro.xcframework.zip
```

Copy the generated checksum for the next step.

## Step 3 — Update Package.swift

Open `Package.swift` and update the version and checksum:

```swift
let version = "X.Y.Z"
let checksumValue = "YOUR_NEW_CHECKSUM"
```

Replace `X.Y.Z` with the new release version and `YOUR_NEW_CHECKSUM` with the checksum generated in Step 2.

Validate the manifest:

```bash
swift package dump-package
```

## Step 4 — Commit and Push Changes

Commit the updated package manifest and ZIP file:

```bash
git add Package.swift ShuftiPro.xcframework.zip
git commit -m "Release X.Y.Z"
git push origin main
```

## Step 5 — Create and Push the Git Tag

Create a tag matching the version in `Package.swift`:

```bash
git tag X.Y.Z
git push origin X.Y.Z
```

## Step 6 — Publish the GitHub Release

Upload the ZIP file as an asset with the exact filename:

`ShuftiPro.xcframework.zip`

```bash
gh release create X.Y.Z ShuftiPro.xcframework.zip \
  --title "X.Y.Z" \
  --notes "SDK Release X.Y.Z"
```

## Step 7 — Validate the Release

Verify that the release asset is accessible:

```bash
curl -sIL https://github.com/OWNER/REPOSITORY/releases/download/X.Y.Z/ShuftiPro.xcframework.zip | grep -i "^HTTP"
```

Replace `OWNER/REPOSITORY` with the actual GitHub repository and `X.Y.Z` with the release version.

Confirm that the release asset returns HTTP 200.

Optionally, test the package resolution from a clean checkout:

```bash
swift package resolve
```

A successful resolution confirms that the package can be downloaded and its checksum validated.

## Important Notes

- Always calculate the checksum after replacing the ZIP.
- The version in `Package.swift`, Git tag, and GitHub Release must match.
- The uploaded ZIP filename must match the filename referenced in `Package.swift`.
- Publish the GitHub Release immediately after pushing the tag.
- If the ZIP changes, recalculate the checksum and update the package manifest before publishing.


 # Verify the asset URL is live (want: HTTP/2 200)
curl -sIL https://github.com/shuftipro/ShuftiPro-Onsite-SPM/releases/download/1.0.51/ShuftiPro.xcframework.zip | grep -i "^HTTP"

That's the whole thing. After step 4 returns 200, the package is ready and clients can add https://github.com/shuftipro/ShuftiPro-Onsite-SPM in Xcode.
