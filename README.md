# assignment-ff

An assignment with RobotFramework

Setup: Install Virtual Environment
- `python3 -m pip install --user virtualenv`
- `python3 -m venv venv`
- `source venv/bin/activate`

Install libraries:
- `python -m pip install --upgrade pip`
- `python -m pip install -r requirements.txt`

Install webdrivers:
- `webdrivermanager firefox chrome opera --linkpath ./drivers`

Test Execution with `Robot Framework`:
* `rrobot -d Results --variable BROWSER:chrome ./Tests/FireFly.robot`
* `rrobot -d Results --variable BROWSER:opera ./Tests/FireFly.robot`

Deactivate Virtual Environment:
* `deactivate`
