Wedding Invitation - Public Hosting

This repository is ready to host your wedding invitation as a static HTML page.

What's included:
- `Wedding invitation.html` - the self-contained HTML file with images embedded as base64.
- `Wedding invitation.backup.html` - a backup of the original (non-inlined) HTML.
- `inline-images.ps1` - PowerShell script used previously to inline images.

Recommended workflow to publish on GitHub Pages (Windows PowerShell):

1. Clone your repo locally or set it as remote in this folder.

# Option A: Initialize repo here and push to your GitHub repo
Open PowerShell in this folder and run:

```powershell
git init
git add "Wedding invitation.html" "Wedding invitation.backup.html" "inline-images.ps1" README.md .nojekyll
git commit -m "Add wedding invitation"
git branch -M main
git remote add origin https://github.com/CirujanoRD/Weding-Invitation.git
git push -u origin main
```

# Option B: If you already cloned the repo elsewhere, copy the files into it and push from there.

2. Enable GitHub Pages:
- Go to the repository on GitHub -> Settings -> Pages
- Choose the `main` branch and `/ (root)` folder, then save.
- After a minute, GitHub will provide a URL like `https://<username>.github.io/<repo>/`.

3. Improve social previews (optional):
- GitHub Pages' link previews (WhatsApp/Facebook) won't read data-URI images from `og:image`.
- If you want a thumbnail preview when sharing the link, upload `Imagen1.jpg` to the repo (or any public image host) and add a meta tag to `Wedding invitation.html` pointing to the public URL:

```html
<meta property="og:image" content="https://raw.githubusercontent.com/CirujanoRD/Weding-Invitation/main/Imagen1.jpg" />
```

4. Testing Formspree:
- The form posts to Formspree and will work from HTTPS. Make a test submission once deployed to confirm receipts.

Rollback:
- If you need to restore the previous non-inlined copy, replace `Wedding invitation.html` with `Wedding invitation.backup.html` and push again.

If you want, I can create a `push-to-github.ps1` script with the commands above. Tell me if you want me to push directly (I will need collaborator access) or if I should just give you the script to run locally.
