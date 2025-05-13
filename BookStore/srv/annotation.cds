using BookStoreService as service from './schema_srv';

annotate service.Books with @(
    
    // Selection Fields
    UI.SelectionFields    : [
        title,
    ],

    // List Report Columns
    UI.LineItem           : [
        {
            $Type: 'UI.DataField',
            Label: 'Title',
            Value: title,
        },
        {
            $Type: 'UI.DataField',
            Label: 'ISBN',
            Value: isbn,
        },


    ],

    // Field Group for Object Page
    UI.FieldGroup #GenInfo: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Title',
                Value: title,
            },
            {
                $Type: 'UI.DataField',
                Label: 'ISBN',
                Value: isbn,
            },
            

        ],
    },

    // Facet
    UI.Facets             : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GenInfo',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GenInfo',
    }, ],
);


    


