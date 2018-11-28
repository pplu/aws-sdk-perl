
package Paws::KinesisAnalyticsV2::AddApplicationOutput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has Output => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::Output', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddApplicationOutput');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::AddApplicationOutputResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationOutput - Arguments for method AddApplicationOutput on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddApplicationOutput on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method AddApplicationOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddApplicationOutput.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $AddApplicationOutputResponse = $kinesisanalytics->AddApplicationOutput(
      ApplicationName             => 'MyApplicationName',
      CurrentApplicationVersionId => 1,
      Output                      => {
        DestinationSchema => {
          RecordFormatType => 'JSON',    # values: JSON, CSV

        },
        Name                  => 'MyInAppStreamName',    # min: 1, max: 32
        KinesisFirehoseOutput => {
          ResourceARN => 'MyResourceARN',                # min: 1, max: 2048

        },    # OPTIONAL
        KinesisStreamsOutput => {
          ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

        },    # OPTIONAL
        LambdaOutput => {
          ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

        },    # OPTIONAL
      },

    );

    # Results:
    my $ApplicationARN = $AddApplicationOutputResponse->ApplicationARN;
    my $ApplicationVersionId =
      $AddApplicationOutputResponse->ApplicationVersionId;
    my $OutputDescriptions = $AddApplicationOutputResponse->OutputDescriptions;

   # Returns a L<Paws::KinesisAnalyticsV2::AddApplicationOutputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/AddApplicationOutput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application to which you want to add the output
configuration.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The version of the application to which you want to add the output
configuration. You can use the DescribeApplication operation to get the
current application version. If the version specified is not the
current version, the C<ConcurrentModificationException> is returned.



=head2 B<REQUIRED> Output => L<Paws::KinesisAnalyticsV2::Output>

An array of objects, each describing one output configuration. In the
output configuration, you specify the name of an in-application stream,
a destination (that is, a Kinesis data stream, a Kinesis Data Firehose
delivery stream, or an AWS Lambda function), and record the formation
to use when writing to the destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddApplicationOutput in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

