targetScope = 'subscription'

param subid string
param basename string = 'bp'
param location string = 'australiaeast'
param engineerNames array = [
  'srozanc'
]

resource rgs 'Microsoft.Resources/resourceGroups@2021-04-01' = [for item in engineerNames: {
  name: '${basename}-${item}-rg'
  location: location
}]
