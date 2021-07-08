
package Paws::Glue::UpdateColumnStatisticsForPartition;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ColumnStatisticsList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::ColumnStatistics]', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has PartitionValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateColumnStatisticsForPartition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateColumnStatisticsForPartitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateColumnStatisticsForPartition - Arguments for method UpdateColumnStatisticsForPartition on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateColumnStatisticsForPartition on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateColumnStatisticsForPartition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateColumnStatisticsForPartition.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateColumnStatisticsForPartitionResponse =
      $glue->UpdateColumnStatisticsForPartition(
      ColumnStatisticsList => [
        {
          AnalyzedTime   => '1970-01-01T01:00:00',
          ColumnName     => 'MyNameString',          # min: 1, max: 255
          ColumnType     => 'MyTypeString',          # max: 20000
          StatisticsData => {
            Type => 'BOOLEAN'
            ,    # values: BOOLEAN, DATE, DECIMAL, DOUBLE, LONG, STRING, BINARY
            BinaryColumnStatisticsData => {
              AverageLength => 1,
              MaximumLength => 1,
              NumberOfNulls => 1,

            },    # OPTIONAL
            BooleanColumnStatisticsData => {
              NumberOfFalses => 1,
              NumberOfNulls  => 1,
              NumberOfTrues  => 1,

            },    # OPTIONAL
            DateColumnStatisticsData => {
              NumberOfDistinctValues => 1,
              NumberOfNulls          => 1,
              MaximumValue           => '1970-01-01T01:00:00',
              MinimumValue           => '1970-01-01T01:00:00',
            },    # OPTIONAL
            DecimalColumnStatisticsData => {
              NumberOfDistinctValues => 1,
              NumberOfNulls          => 1,
              MaximumValue           => {
                Scale         => 1,
                UnscaledValue => 'BlobBlob',

              },    # OPTIONAL
              MinimumValue => {
                Scale         => 1,
                UnscaledValue => 'BlobBlob',

              },    # OPTIONAL
            },    # OPTIONAL
            DoubleColumnStatisticsData => {
              NumberOfDistinctValues => 1,
              NumberOfNulls          => 1,
              MaximumValue           => 1,    # OPTIONAL
              MinimumValue           => 1,    # OPTIONAL
            },    # OPTIONAL
            LongColumnStatisticsData => {
              NumberOfDistinctValues => 1,
              NumberOfNulls          => 1,
              MaximumValue           => 1,    # OPTIONAL
              MinimumValue           => 1,    # OPTIONAL
            },    # OPTIONAL
            StringColumnStatisticsData => {
              AverageLength          => 1,
              MaximumLength          => 1,
              NumberOfDistinctValues => 1,
              NumberOfNulls          => 1,

            },    # OPTIONAL
          },

        },
        ...
      ],
      DatabaseName    => 'MyNameString',
      PartitionValues => [
        'MyValueString',
        ...    # max: 1024
      ],
      TableName => 'MyNameString',
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      );

    # Results:
    my $Errors = $UpdateColumnStatisticsForPartitionResponse->Errors;

   # Returns a L<Paws::Glue::UpdateColumnStatisticsForPartitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateColumnStatisticsForPartition>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the partitions in question reside. If
none is supplied, the Amazon Web Services account ID is used by
default.



=head2 B<REQUIRED> ColumnStatisticsList => ArrayRef[L<Paws::Glue::ColumnStatistics>]

A list of the column statistics.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the partitions reside.



=head2 B<REQUIRED> PartitionValues => ArrayRef[Str|Undef]

A list of partition values identifying the partition.



=head2 B<REQUIRED> TableName => Str

The name of the partitions' table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateColumnStatisticsForPartition in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

