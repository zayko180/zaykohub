-- Partie 1: Gestion de la clé
local key = "ZAYKO2025"  -- Clé de sécurité
local enteredKey = ""  -- Valeur de la clé saisie par l'utilisateur

-- Demander à l'utilisateur de saisir la clé
print("Entrez la clé pour accéder au Zayko Hub")
enteredKey = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("TextBox"):GetText()

-- Vérifier la clé
if enteredKey == key then
    print("Accès autorisé ! Bienvenue dans le Zayko Hub !")
else
    print("Clé incorrecte. Accès refusé.")
    return
end

-- Partie 2: Musique (Squeezie - Time Time)
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://(ID de la musique)"
sound.Parent = game.Workspace
sound:Play()

-- Partie 3: Menu principal du Hub (exécuteurs)
local function showMenu()
    local menu = Instance.new("Frame")  -- Créer le menu
    menu.Size = UDim2.new(0, 500, 0, 300)  -- Taille du menu
    menu.Position = UDim2.new(0.5, -250, 0.5, -150)  -- Centré

    -- Ajouter des boutons pour chaque exécuteur
    local button = Instance.new("TextButton")
    button.Text = "KRNL"
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = UDim2.new(0.5, -100, 0.2, 0)
    button.Parent = menu
    button.MouseButton1Click:Connect(function()
        -- Ouvrir les scripts pour KRNL
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TON_PSEUDO/ZaykoHub/main/scripts/krnl/bloxfruits.lua"))()
    end)

    -- Ajouter d'autres boutons pour les autres exécuteurs
    -- Par exemple, pour Synapse, Fluxus, etc...
end

showMenu()  -- Afficher le menu
