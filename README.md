
## **Build Command**
```bash
docker build -t latexify-offline -f Dockerfile .
```

## **Pytest Command**

**Windows (Command Prompt):**
```cmd
docker run --rm -v "%CD%:/work" latexify-offline pytest
```

**Windows (PowerShell):**
```powershell
docker run --rm -v "${PWD}:/work" latexify-offline pytest
```

**Mac/Linux (Bash/Zsh):**
```bash
docker run --rm -v "$(pwd):/work" latexify-offline pytest
```

## **Pre Command**

**Windows (Command Prompt):**
```cmd
docker run --rm -v "%CD%:/work" latexify-offline pre
```

**Windows (PowerShell):**
```powershell
docker run --rm -v "${PWD}:/work" latexify-offline pre
```

**Mac/Linux (Bash/Zsh):**
```bash
docker run --rm -v "$(pwd):/work" latexify-offline pre
```

## **Post Command**

**Windows (Command Prompt):**
```cmd
docker run --rm -v "%CD%:/work" latexify-offline post
```

**Windows (PowerShell):**
```powershell
docker run --rm -v "${PWD}:/work" latexify-offline post
```

**Mac/Linux (Bash/Zsh):**
```bash
docker run --rm -v "$(pwd):/work" latexify-offline post
```
