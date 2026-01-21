## HOW TO CUSTOMIZE 
### Open "Layout.json"

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
