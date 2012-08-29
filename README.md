# Beer Builder API

## Data

### Beer Category : 
a way for us to access the BJCP categories (light lager, dark lager, bock, etc.)  See - http://www.bjcp.org/2008styles/catdex.php for an exact list

* Name

### Beer Style : 
BJCP styles belong to a beer category, examples within light lager would be light american lager, standard american lager, etc. See - http://www.bjcp.org/2008styles/style01.php

* name
* og_lo
* og_hi
* fg_lo
* fg_hi
* abv_lo
* abv_hi
* ibu_lo
* ibu_hi
* srm_lo
* srm_hi
* aroma
* appearance
* flavor
* mouthfeel
* overall_impression
* comments
* history

### Prototype :
Prototypes belong to a beer style. Each style has a single prototype.

* Grain(s)
  * Weight
* Hop(s)
  * Weight
  * Time in Boil (minutes)
* Yeast(s)

### Grain : 
* name
* lovibond_lo
* lovibond_hi
* gu_lo
* gu_hi
* characteristics
* description
* adjectives - We can use these to build beer character on the front end (fruity, nutty, etc.)

### Hop : 
* name
* aa_lo
* aa_hi
* characteristics
* description
* adjectives

### Yeast :
* name
* attenuation_lo
* attenuation_hi
* flocculation
* temperature_lo
* temperature_hi
* alcohol_tolerance
* adjectives

## Sample API Response

#### GET `/api/prototypes`

    {
      [{
          "style" : {
              "name"  : "...",
              "attrs" : []
          },
          "grains" : [
              {
                  "id"        : "51f65ads4f6sad4f"
                  "name"      : "sumthin",
                  "weight"    : 5
              }
          ],
          "hops" : [
              {
                  "id"        : "51f65ads4f6sad4f"
                  "name"      : "sumthin",
                  "weight"    : 5
                  "boil_time" : 45
              }
          ]
      }]
    }