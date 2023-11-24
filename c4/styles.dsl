        styles {
            element Person {
                shape Person
                background blue
                color      white
            }
            element ExternalSystem {
                shape Box
                background red
                color      white
            }
            element "Software System" {
                shape Roundedbox
                background green
                color white
            }

            element "Horse" {
                shape circle
                icon horse.png
                background green
                color      white               
            }

            relationship "Hires" {
                color blue
                style dotted
            }
        }