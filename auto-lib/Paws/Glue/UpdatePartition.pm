
package Paws::Glue::UpdatePartition;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartitionInput => (is => 'ro', isa => 'Paws::Glue::PartitionInput', required => 1);
  has PartitionValueList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePartition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdatePartitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdatePartition - Arguments for method UpdatePartition on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePartition on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdatePartition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePartition.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdatePartitionResponse = $glue->UpdatePartition(
      DatabaseName   => 'MyNameString',
      PartitionInput => {
        LastAccessTime   => '1970-01-01T01:00:00',    # OPTIONAL
        LastAnalyzedTime => '1970-01-01T01:00:00',    # OPTIONAL
        Parameters       => {
          'MyKeyString' =>
            'MyParametersMapValue',  # key: min: 1, max: 255, value: max: 512000
        },    # OPTIONAL
        StorageDescriptor => {
          BucketColumns => [
            'MyNameString', ...    # min: 1, max: 255
          ],                       # OPTIONAL
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
        Values => [
          'MyValueString', ...    # max: 1024
        ],                        # OPTIONAL
      },
      PartitionValueList => [
        'MyValueString', ...      # max: 1024
      ],
      TableName => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdatePartition>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the partition to be updated resides.
If none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database in which the table in question
resides.



=head2 B<REQUIRED> PartitionInput => L<Paws::Glue::PartitionInput>

The new partition object to which to update the partition.



=head2 B<REQUIRED> PartitionValueList => ArrayRef[Str|Undef]

A list of the values defining the partition.



=head2 B<REQUIRED> TableName => Str

The name of the table where the partition to be updated is located.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePartition in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

