tableextension 50100 ADWSalesLine extends "Sales Line"
{
    fields
    {
        // Add changes to table fields here
    }

    trigger OnAfterInsert()
    begin
        if (("No." = '') or ("Line Amount" = 0)) and (Type.AsInteger() <> 0)

        // Include this to limit the validation to a particular document type
        // and ("Document Type".AsInteger() = 0)

        then begin
            Error('Line Amount cannot be zero');
        end;

    end;

    var
        myInt: Integer;
}