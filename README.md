## To Do before launching Starter.sh 
Open the terminal in this folder and run Install.sh

> [!NOTE]
>     I heavely suggest to assign a shortcut (like "Meta+Enter")
>     to run the Starter.sh program so that you can
> 	  open this layout whenever you want.\
> 	  **To do this:** go to System Settings --> Keyboard --> Shortcuts --> Add New -->
> 	  Command or Script --> Choose...
> 	  Then choose the path that leads to COOLKonsoleStarter.sh and assign a shortcut.

## To Customize
### Open "conf/Layout.json"

``` json
{
    "Orientation": "Horizontal",
    "Widgets": [
        {
            "Columns": 116,
            "Command": "clear; fastfetch",  <----- Here you can modify colors adding --color-titile, --logo-color-1 <color> etc...
            "Lines": 54,
            "SessionRestoreId": 0,
            "WorkingDirectory": "/Home"   <---- Here you can change the path of the directory open by default
        },
        {
            "Orientation": "Vertical",
            "Widgets": [
                {
                    "Columns": 116,
                    "Command": "/usr/local/bin/fire_effect",
                    "Lines": 26,
                    "SessionRestoreId": 0,
                    "WorkingDirectory": "/Home" <---- Here you can change the path of the directory open by default
                },
                {
                    "Columns": 116,
                    "Command": "btop",  <--- Here btop is set with no background by default you can modify this and add "--theme <themename>"
                    "Lines": 26,
                    "SessionRestoreId": 0,
                    "WorkingDirectory": "/Home" <---- Here you can change the path of the directory open by default
                }
            ]
        }
    ]
}
```                
