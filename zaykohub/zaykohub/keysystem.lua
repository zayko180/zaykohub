-- Créer un champ de texte pour entrer la clé
local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 200, 0, 50)
textBox.Position = UDim2.new(0.5, -100, 0.5, -25)
textBox.Parent = game.Players.LocalPlayer.PlayerGui

textBox.PlaceholderText = "Entrez la clé"
textBox.Text = ""

-- Vérifier la clé quand l'utilisateur appuie sur Enter
textBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local enteredKey = textBox.Text
        if enteredKey == "ZAYKO2025" then
            -- Accès autorisé
            print("Accès autorisé")
        else
            -- Clé incorrecte
            print("Clé incorrecte")
        end
    end
end)
