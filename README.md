# yw-loadouts

## Features

- **Custom Loadouts:** Define multiple loadouts with specific weapons and equipment.
- **Easy Configuration:** Simple setup through the `config.lua` file.

## Requirements

- **FiveM Server:** Ensure you have a working FiveM server setup.
- **QBCore Framework:** This script is designed to work with the QBCore framework.

## Installation

1. **Download the Script:**
   - Clone the repository or download it as a ZIP file and extract it.
     ```bash
     git clone https://github.com/YuvalWeb8/yw-loadouts.git
     ```

2. **Add to Resources:**
   - Place the `yw-loadouts` folder into your server's `resources` directory.

3. **Configure the Script:**
   - Navigate to the `config.lua` file within the `yw-loadouts` folder.
   - Define your desired loadouts. For example:
     ```lua
      config.Loadouts = {
          Pistol = {
              LoadoutName = "Pistol",
              items = {
                  { name = "weapon_pistol", count = 1 },
                  { name = "oxy", count = 15 },
                  { name = "adrenaline", count = 15 },
                  { name = "bandage", count = 15 },
                  { name = "heavyarmor", count = 15 },
              },
              image = 'Images/Loadouts/weapon_pistol.png'
          }
      }
     ```
   - Adjust the loadouts as per your server's requirements.

4. **Start the Resource:**
   - Add the following line to your `server.cfg` file to ensure the resource starts:
     ```cfg
     ensure yw-loadouts
     ```


## Support

For assistance or further inquiries, feel free to reach out:

- **Discord:** .yuvalweb_

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
