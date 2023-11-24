
horseCatalogSystem = softwareSystem "HorseCatalog System" {
    frontEnd = container "HorseCatalog FrontEnd" tags "WebUi"
    uxApi = container "HorseCatalog Ux-Api For Web"
    authService = container "authService"
    adminService = container "adminService"
    horseService = container "horseService"
    dataBase     = container "Database" {
        tags "Database"
    }
    integration  = Container "Integration Platform"

    frontEnd -> uxApi "http(s)/json"
    frontEnd -> authService "Use"
    uxApi    -> authService "Use"
    uxApi    -> adminService "Use"
    uxApi    -> horseService "Use"
    adminService -> dataBase "Use"
    horseService -> dataBase "Use"
    horseService -> integration "Use"
}