Config = {}

Config = {

    Society_gouv = 'society_gouvernement', 

    -- Intervalle de temps pour prélever les impôts (1 heure par défauts)
    Time = 1 * 3600000, 

    -- Montant à payer lors du jour des impots
    Impots = { 
        Chomage = 1000,
        Public = 2000,
        Prive = 5000,
    },

    -- true si l'argent collecté va dans comptes du Gouvernement / false si l'argent ne va pas dans les comptes du Gouvernement
    Gouv = true, 

    Cchomage = { 'unemployed' },

    Ppublic = {
        'police',
       'ambulance',
    },

    Pprive = {
        'mechanic',
        'concess',
        'driving',
        'avocats',
        'uber',
        'galaxy',
        'ingenieur',
        'kfc',
    },

}
