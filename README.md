# flockingbird-swift

Swift bindings for [flockingbird](https://github.com/falcowinkler/flockingbird).

Example usage: 
```swift
let flock = Flock(numberOfBoids: 100, maxX: 1024, maxY: 600)
        let simulationParameters = FlockSimulationParameters(fromDict: ["maxX": 1024, "maxY": 600])
        let flockSimulation = FlockSimulation(flock: flock, simulationParameters: simulationParameters)
```

setup
```bash
git submodule init
git submodule update --recursive
# to update the commit of the submodule
cd Sources/CPP
git pull
```

build
```bash
swift build
```

test
```bash
swift test
```

