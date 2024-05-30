# BackPack
Secure Your Data, Lighten Your Load. BackPack backs up your data, using incremental backups to only store what's changed, saving space while ensuring you have a complete history of your files in case of emergencies.


## Table of content
- [BackPack](#backpack)
  - [Table of content](#table-of-content)
  - [Motivation](#motivation)
  - [Installation \& Usage](#installation--usage)
    - [Installation](#installation)
    - [Usage](#usage)
  - [Contributing](#contributing)
  - [History](#history)
  - [Credits](#credits)
  - [License](#license)


## Motivation
Sick of bloated backup software and confusing interfaces? BackPack was born out of frustration. I built this simple script using rsync to automate daily backups, keeping your data safe and your mind clear.


## Installation & Usage

### Installation

1. **Clone the repository and navigate to the directory:**
   
   ```bash
   git clone https://github.com/gitzain/backpack.git
   cd backpack
   ```

2. **Set script permissions:**

   ```bash
   chmod +x backpack.sh
   ```

3. **Edit the script (optional):**

   Customize parameters in `backpack.sh` under the "Set these parameters" section:

   ```bash
   current_user=$USER
   backup_location="/media/truecrypt1/user-data/$current_user"
   exclude_hidden=".*"
   exclude_this="Downloads"
   ```

4. **Install rsync (if not installed):**

   Ensure rsync is installed:

   ```bash
   sudo apt-get install rsync   # Debian/Ubuntu
   sudo yum install rsync       # CentOS/RHEL
   ```

### Usage

1. **Run the backup script:**

   ```bash
   ./backpack.sh
   ```


## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D


## History
12/02/17: v1 release on github.


## Credits
- Created by <a href="https://iamzain.com">Zain Khan</a>. 
- Template for this README is <a href="https://github.com/gitzain/template-README">Template-README</a> created by <a href="https://iamzain.com">Zain Khan</a>


## License
See the LICENSE file in this project's directory.
