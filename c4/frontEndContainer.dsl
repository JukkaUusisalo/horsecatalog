frontEnd = container "HorseCatalog FrontEnd" tags "WebUi" {

    adminUI = component "Admin UI SPA"
    ownerUI = component "Owner UI SPA"
    groovyUI = component "GroovyUI SPA"
    competitorUI = component "Competitor UI SPA"
    commonUIElements = component "Common Elements"

    authentication = component "Authentication"

    adminUI        -> commonUIElements "use"
    ownerUI        -> commonUIElements "use"
    competitorUI   -> commonUIElements "use"
    groovyUI       -> commonUIElements "use"

    commonUIElements -> authentication "dependency"

}