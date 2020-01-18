table 50200 RegexDict
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Country; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";

        }
        field(2; Regex; Text[255])
        {
            DataClassification = ToBeClassified;
        }

        field(3; TestData; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Country)
        {
            Clustered = true;
        }
    }
}


page 50200 RegexDict
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = RegexDict;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Country; Country) { ApplicationArea = All; }
                field(Regex; Regex) { ApplicationArea = All; }
                field(TestData; TestData) { ApplicationArea = All; }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(Test)
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                // t: DotNet.Regex
                begin
                    // t.Expression := Regex;
                    // t.text := TestData;
                    // t.Matche[i]
                end;
            }
        }
    }
}