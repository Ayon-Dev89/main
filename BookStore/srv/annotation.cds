using BookStoreService as service from './schema_srv';

annotate service.Books with @(
    
    // Selection Fields
    UI.SelectionFields    : [
        author_A_ID,
        title,
        publisher_P_ID
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
         {
            $Type: 'UI.DataField',
            Label: 'Price',
            Value: price_code,
        },
                {
            $Type: 'UI.DataField',
            Label: 'Language',
            Value: Language_code,
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
              {
                $Type: 'UI.DataField',
                Label: 'Price',
                Value: price_code,
            },
                        {
                $Type: 'UI.DataField',
                Label: 'Language',
                Value: Language_code,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Stock',
                Value: stock,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Discount',
                Value: discount,
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


    


