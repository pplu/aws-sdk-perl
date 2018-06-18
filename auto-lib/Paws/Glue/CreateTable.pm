
package Paws::Glue::CreateTable;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TableInput => (is => 'ro', isa => 'Paws::Glue::TableInput', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateTable - Arguments for method CreateTable on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTable on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTable.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateTableResponse = $glue->CreateTable(
      DatabaseName => 'MyNameString',
      TableInput   => {
        Name             => 'MyNameString',           # min: 1, max: 255
        Description      => 'MyDescriptionString',    # max: 2048; OPTIONAL
        LastAccessTime   => '1970-01-01T01:00:00',    # OPTIONAL
        LastAnalyzedTime => '1970-01-01T01:00:00',    # OPTIONAL
        Owner            => 'MyNameString',           # min: 1, max: 255
        Parameters       => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
        PartitionKeys => [
          {
            Name    => 'MyNameString',          # min: 1, max: 255
            Comment => 'MyCommentString',       # max: 255; OPTIONAL
            Type    => 'MyColumnTypeString',    # max: 131072; OPTIONAL
          },
          ...
        ],                                      # OPTIONAL
        Retention         => 1,                 # OPTIONAL
        StorageDescriptor => {
          BucketColumns => [
            'MyNameString', ...                 # min: 1, max: 255
          ],                                    # OPTIONAL
          Columns => [
            {
              Name    => 'MyNameString',          # min: 1, max: 255
              Comment => 'MyCommentString',       # max: 255; OPTIONAL
              Type    => 'MyColumnTypeString',    # max: 131072; OPTIONAL
            },
            ...
          ],                                      # OPTIONAL
          Compressed      => 1,                   # OPTIONAL
          InputFormat     => 'MyFormatString',    # max: 128; OPTIONAL
          Location        => 'MyLocationString',  # max: 2056; OPTIONAL
          NumberOfBuckets => 1,                   # OPTIONAL
          OutputFormat    => 'MyFormatString',    # max: 128; OPTIONAL
          Parameters      => {
            'MyKeyString' => 'MyParametersMapValue'
            ,    # key: min: 1, max: 255, value: max: 512000
          },    # OPTIONAL
          SerdeInfo => {
            Name       => 'MyNameString',    # min: 1, max: 255
            Parameters => {
              'MyKeyString' => 'MyParametersMapValue'
              ,    # key: min: 1, max: 255, value: max: 512000
            },    # OPTIONAL
            SerializationLibrary => 'MyNameString',    # min: 1, max: 255
          },    # OPTIONAL
          SkewedInfo => {
            SkewedColumnNames => [
              'MyNameString', ...    # min: 1, max: 255
            ],                       # OPTIONAL
            SkewedColumnValueLocationMaps =>
              { 'MyColumnValuesString' => 'MyColumnValuesString', },  # OPTIONAL
            SkewedColumnValues => [ 'MyColumnValuesString', ... ],    # OPTIONAL
          },    # OPTIONAL
          SortColumns => [
            {
              Column    => 'MyNameString',    # min: 1, max: 255
              SortOrder => 1,                 # max: 1

            },
            ...
          ],                                  # OPTIONAL
          StoredAsSubDirectories => 1,        # OPTIONAL
        },    # OPTIONAL
        TableType        => 'MyTableTypeString',    # max: 255; OPTIONAL
        ViewExpandedText => 'MyViewTextString',     # max: 409600; OPTIONAL
        ViewOriginalText => 'MyViewTextString',     # max: 409600; OPTIONAL
      },
      CatalogId => 'MyCatalogIdString',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateTable>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which to create the C<Table>. If none is
supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The catalog database in which to create the new table. For Hive
compatibility, this name is entirely lowercase.



=head2 B<REQUIRED> TableInput => L<Paws::Glue::TableInput>

The C<TableInput> object that defines the metadata table to create in
the catalog.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTable in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

