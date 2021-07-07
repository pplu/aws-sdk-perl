
package Paws::TimestreamWrite::WriteRecords;
  use Moose;
  has CommonAttributes => (is => 'ro', isa => 'Paws::TimestreamWrite::Record');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamWrite::Record]', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'WriteRecords');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::WriteRecords - Arguments for method WriteRecords on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method WriteRecords on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method WriteRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to WriteRecords.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    $ingest . timestream->WriteRecords(
      DatabaseName => 'MyResourceName',
      Records      => [
        {
          Dimensions => [
            {
              Name               => 'MyStringValue256',     # min: 1, max: 256
              Value              => 'MyStringValue2048',    # min: 1, max: 2048
              DimensionValueType => 'VARCHAR',    # values: VARCHAR; OPTIONAL
            },
            ...
          ],    # max: 128; OPTIONAL
          MeasureName      => 'MyStringValue256',     # min: 1, max: 256
          MeasureValue     => 'MyStringValue2048',    # min: 1, max: 2048
          MeasureValueType =>
            'DOUBLE',    # values: DOUBLE, BIGINT, VARCHAR, BOOLEAN; OPTIONAL
          Time     => 'MyStringValue256',    # min: 1, max: 256
          TimeUnit => 'MILLISECONDS'
          , # values: MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS; OPTIONAL
          Version => 1,    # OPTIONAL
        },
        ...
      ],
      TableName        => 'MyResourceName',
      CommonAttributes => {
        Dimensions => [
          {
            Name               => 'MyStringValue256',     # min: 1, max: 256
            Value              => 'MyStringValue2048',    # min: 1, max: 2048
            DimensionValueType => 'VARCHAR',    # values: VARCHAR; OPTIONAL
          },
          ...
        ],    # max: 128; OPTIONAL
        MeasureName      => 'MyStringValue256',     # min: 1, max: 256
        MeasureValue     => 'MyStringValue2048',    # min: 1, max: 2048
        MeasureValueType =>
          'DOUBLE',    # values: DOUBLE, BIGINT, VARCHAR, BOOLEAN; OPTIONAL
        Time     => 'MyStringValue256',    # min: 1, max: 256
        TimeUnit => 'MILLISECONDS'
        ,   # values: MILLISECONDS, SECONDS, MICROSECONDS, NANOSECONDS; OPTIONAL
        Version => 1,    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/WriteRecords>

=head1 ATTRIBUTES


=head2 CommonAttributes => L<Paws::TimestreamWrite::Record>

A record containing the common measure and dimension attributes shared
across all the records in the request. The measure and dimension
attributes specified in here will be merged with the measure and
dimension attributes in the records object when the data is written
into Timestream.



=head2 B<REQUIRED> DatabaseName => Str

The name of the Timestream database.



=head2 B<REQUIRED> Records => ArrayRef[L<Paws::TimestreamWrite::Record>]

An array of records containing the unique dimension and measure
attributes for each time series data point.



=head2 B<REQUIRED> TableName => Str

The name of the Timesream table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method WriteRecords in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

