
package Paws::Quicksight::CreateDataSet;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has ColumnGroups => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ColumnGroup]');
  has ColumnLevelPermissionRules => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ColumnLevelPermissionRule]');
  has DataSetId => (is => 'ro', isa => 'Str', required => 1);
  has FieldFolders => (is => 'ro', isa => 'Paws::Quicksight::FieldFolderMap');
  has ImportMode => (is => 'ro', isa => 'Str', required => 1);
  has LogicalTableMap => (is => 'ro', isa => 'Paws::Quicksight::LogicalTableMap');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has PhysicalTableMap => (is => 'ro', isa => 'Paws::Quicksight::PhysicalTableMap', required => 1);
  has RowLevelPermissionDataSet => (is => 'ro', isa => 'Paws::Quicksight::RowLevelPermissionDataSet');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/data-sets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateDataSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateDataSet - Arguments for method CreateDataSet on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSet on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateDataSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSet.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateDataSetResponse = $quicksight->CreateDataSet(
      AwsAccountId     => 'MyAwsAccountId',
      DataSetId        => 'MyResourceId',
      ImportMode       => 'SPICE',
      Name             => 'MyResourceName',
      PhysicalTableMap => {
        'MyPhysicalTableId' => {
          CustomSql => {
            DataSourceArn => 'MyArn',
            Name          => 'MyCustomSqlName',    # min: 1, max: 64
            SqlQuery      => 'MySqlQuery',         # min: 1, max: 65536
            Columns       => [
              {
                Name => 'MyColumnName',    # min: 1, max: 128
                Type => 'STRING'
                , # values: STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON

              },
              ...
            ],    # min: 1, max: 2048; OPTIONAL
          },    # OPTIONAL
          RelationalTable => {
            DataSourceArn => 'MyArn',
            InputColumns  => [
              {
                Name => 'MyColumnName',    # min: 1, max: 128
                Type => 'STRING'
                , # values: STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON

              },
              ...
            ],    # min: 1, max: 2048; OPTIONAL
            Name    => 'MyRelationalTableName',       # min: 1, max: 64
            Catalog => 'MyRelationalTableCatalog',    # max: 256; OPTIONAL
            Schema  => 'MyRelationalTableSchema',     # max: 64; OPTIONAL
          },    # OPTIONAL
          S3Source => {
            DataSourceArn => 'MyArn',
            InputColumns  => [
              {
                Name => 'MyColumnName',    # min: 1, max: 128
                Type => 'STRING'
                , # values: STRING, INTEGER, DECIMAL, DATETIME, BIT, BOOLEAN, JSON

              },
              ...
            ],    # min: 1, max: 2048; OPTIONAL
            UploadSettings => {
              ContainsHeader => 1,                # OPTIONAL
              Delimiter      => 'MyDelimiter',    # min: 1, max: 1; OPTIONAL
              Format         =>
                'CSV',    # values: CSV, TSV, CLF, ELF, XLSX, JSON; OPTIONAL
              StartFromRow  => 1,    # min: 1; OPTIONAL
              TextQualifier =>
                'DOUBLE_QUOTE',   # values: DOUBLE_QUOTE, SINGLE_QUOTE; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # key: min: 1, max: 64
      },
      ColumnGroups => [
        {
          GeoSpatialColumnGroup => {
            Columns => [
              'MyColumnName', ...    # min: 1, max: 128
            ],    # min: 1, max: 16
            CountryCode => 'US',                   # values: US
            Name        => 'MyColumnGroupName',    # min: 1, max: 64

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ColumnLevelPermissionRules => [
        {
          ColumnNames => [ 'MyString', ... ],    # min: 1; OPTIONAL
          Principals  => [ 'MyString', ... ],    # min: 1, max: 100; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      FieldFolders => {
        'MyFieldFolderPath' => {
          Columns     => [ 'MyString', ... ],           # max: 5000; OPTIONAL
          Description => 'MyFieldFolderDescription',    # max: 500; OPTIONAL
        },    # key: min: 1, max: 1000
      },    # OPTIONAL
      LogicalTableMap => {
        'MyLogicalTableId' => {
          Alias  => 'MyLogicalTableAlias',    # min: 1, max: 64
          Source => {
            JoinInstruction => {
              LeftOperand  => 'MyLogicalTableId',    # min: 1, max: 64
              OnClause     => 'MyOnClause',          # min: 1, max: 512
              RightOperand => 'MyLogicalTableId',    # min: 1, max: 64
              Type         => 'INNER',    # values: INNER, OUTER, LEFT, RIGHT
              LeftJoinKeyProperties => {
                UniqueKey => 1,           # OPTIONAL
              },    # OPTIONAL
              RightJoinKeyProperties => {
                UniqueKey => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            PhysicalTableId => 'MyPhysicalTableId',    # min: 1, max: 64
          },
          DataTransforms => [
            {
              CastColumnTypeOperation => {
                ColumnName    => 'MyColumnName',    # min: 1, max: 128
                NewColumnType =>
                  'STRING',    # values: STRING, INTEGER, DECIMAL, DATETIME
                Format => 'MyTypeCastFormat',    # max: 32; OPTIONAL
              },    # OPTIONAL
              CreateColumnsOperation => {
                Columns => [
                  {
                    ColumnId   => 'MyColumnId',      # min: 1, max: 64
                    ColumnName => 'MyColumnName',    # min: 1, max: 128
                    Expression => 'MyExpression',    # min: 1, max: 4096

                  },
                  ...
                ],    # min: 1, max: 128

              },    # OPTIONAL
              FilterOperation => {
                ConditionExpression => 'MyExpression',    # min: 1, max: 4096

              },    # OPTIONAL
              ProjectOperation => {
                ProjectedColumns => [ 'MyString', ... ],    # min: 1, max: 2000

              },    # OPTIONAL
              RenameColumnOperation => {
                ColumnName    => 'MyColumnName',    # min: 1, max: 128
                NewColumnName => 'MyColumnName',    # min: 1, max: 128

              },    # OPTIONAL
              TagColumnOperation => {
                ColumnName => 'MyColumnName',    # min: 1, max: 128
                Tags       => [
                  {
                    ColumnDescription => {
                      Text => 'MyColumnDescriptiveText',    # max: 500; OPTIONAL
                    },    # OPTIONAL
                    ColumnGeographicRole => 'COUNTRY'
                    , # values: COUNTRY, STATE, COUNTY, CITY, POSTCODE, LONGITUDE, LATITUDE; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 16

              },    # OPTIONAL
            },
            ...
          ],    # min: 1, max: 2048; OPTIONAL
        },    # key: min: 1, max: 64
      },    # OPTIONAL
      Permissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      RowLevelPermissionDataSet => {
        Arn              => 'MyArn',
        PermissionPolicy => 'GRANT_ACCESS',  # values: GRANT_ACCESS, DENY_ACCESS
        FormatVersion => 'VERSION_1',   # values: VERSION_1, VERSION_2; OPTIONAL
        Namespace     => 'MyNamespace', # max: 64; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Arn          = $CreateDataSetResponse->Arn;
    my $DataSetId    = $CreateDataSetResponse->DataSetId;
    my $IngestionArn = $CreateDataSetResponse->IngestionArn;
    my $IngestionId  = $CreateDataSetResponse->IngestionId;
    my $RequestId    = $CreateDataSetResponse->RequestId;
    my $Status       = $CreateDataSetResponse->Status;

    # Returns a L<Paws::Quicksight::CreateDataSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateDataSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 ColumnGroups => ArrayRef[L<Paws::Quicksight::ColumnGroup>]

Groupings of columns that work together in certain QuickSight features.
Currently, only geospatial hierarchy is supported.



=head2 ColumnLevelPermissionRules => ArrayRef[L<Paws::Quicksight::ColumnLevelPermissionRule>]

A set of one or more definitions of a C< ColumnLevelPermissionRule >.



=head2 B<REQUIRED> DataSetId => Str

An ID for the dataset that you want to create. This ID is unique per
AWS Region for each AWS account.



=head2 FieldFolders => L<Paws::Quicksight::FieldFolderMap>

The folder that contains fields and nested subfolders for your dataset.



=head2 B<REQUIRED> ImportMode => Str

Indicates whether you want to import the data into SPICE.

Valid values are: C<"SPICE">, C<"DIRECT_QUERY">

=head2 LogicalTableMap => L<Paws::Quicksight::LogicalTableMap>

Configures the combination and transformation of the data from the
physical tables.



=head2 B<REQUIRED> Name => Str

The display name for the dataset.



=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions on the dataset.



=head2 B<REQUIRED> PhysicalTableMap => L<Paws::Quicksight::PhysicalTableMap>

Declares the physical tables that are available in the underlying data
sources.



=head2 RowLevelPermissionDataSet => L<Paws::Quicksight::RowLevelPermissionDataSet>

The row-level security configuration for the data that you want to
create.



=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

Contains a map of the key-value pairs for the resource tag or tags
assigned to the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSet in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

