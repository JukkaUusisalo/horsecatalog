workspace {

    !adrs adr

    model {
        owner      = person "HorseOwner"
        groovy     = person "Groovy"  
        admin      = person "Admin"
        competitor = person "Competitor"
        horse      = person "Horse" tags "Horse"

        horseCatalogSystem = softwareSystem "HorseCatalog System"
        kipa               = softwareSystem "Kipa" {
            tags "ExternalSystem"
        }
        equipe             = softwareSystem "Equipe" {
            tags "ExternalSystem"
        }
        sukuposti          = softwareSystem "Sukuposti" {
            tags "ExternalSystem"
        }
        hopoti             = softwareSystem "Hopoti" {
            tags "ExternalSystem"
        }
        hippos             = softwareSystem "Hippos" {
            tags "ExternalSystem"
        }

        owner  -> horseCatalogSystem "Uses"
        groovy -> horseCatalogSystem "Uses"
        admin  -> horseCatalogSystem "Uses"
        competitor -> horseCatalogSystem "Uses"
        owner -> competitor "Hires"
        owner -> groovy "Hires"
        owner -> horse "Owns"
        horse -> horseCatalogSystem "maintainedBy"
        groovy -> horse "takes care"
        competitor -> horse "train and compete"

        horseCatalogSystem -> kipa "Integration"
        horseCatalogSystem -> equipe "Integration"
        horseCatalogSystem -> sukuposti "Integration"
        horseCatalogSystem -> hopoti "Integration"
        horseCatalogSystem -> hippos "Integration"
    }

    views {
        !include styles.dsl 
        systemContext horseCatalogSystem "SystemContextDiagram" {
            include *
        }
    }

}