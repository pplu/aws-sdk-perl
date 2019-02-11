
package Paws::KinesisAnalyticsV2::DiscoverInputSchema;
  use Moose;
  has InputProcessingConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputProcessingConfiguration');
  has InputStartingPositionConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputStartingPositionConfiguration');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has S3Configuration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::S3Configuration');
  has ServiceExecutionRole => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DiscoverInputSchema');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::DiscoverInputSchemaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DiscoverInputSchema - Arguments for method DiscoverInputSchema on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DiscoverInputSchema on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method DiscoverInputSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DiscoverInputSchema.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $DiscoverInputSchemaResponse = $kinesisanalytics->DiscoverInputSchema(
      ServiceExecutionRole         => 'MyRoleARN',
      InputProcessingConfiguration => {
        InputLambdaProcessor => {
          ResourceARN => 'MyResourceARN',    # min: 1, max: 2048

        },

      },    # OPTIONAL
      InputStartingPositionConfiguration => {
        InputStartingPosition =>
          'NOW',    # values: NOW, TRIM_HORIZON, LAST_STOPPED_POINT; OPTIONAL
      },    # OPTIONAL
      ResourceARN     => 'MyResourceARN',    # OPTIONAL
      S3Configuration => {
        BucketARN => 'MyBucketARN',          # min: 1, max: 2048
        FileKey   => 'MyFileKey',            # min: 1, max: 1024

      },    # OPTIONAL
    );

    # Results:
    my $InputSchema        = $DiscoverInputSchemaResponse->InputSchema;
    my $ParsedInputRecords = $DiscoverInputSchemaResponse->ParsedInputRecords;
    my $ProcessedInputRecords =
      $DiscoverInputSchemaResponse->ProcessedInputRecords;
    my $RawInputRecords = $DiscoverInputSchemaResponse->RawInputRecords;

    # Returns a L<Paws::KinesisAnalyticsV2::DiscoverInputSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/DiscoverInputSchema>

=head1 ATTRIBUTES


=head2 InputProcessingConfiguration => L<Paws::KinesisAnalyticsV2::InputProcessingConfiguration>

The InputProcessingConfiguration to use to preprocess the records
before discovering the schema of the records.



=head2 InputStartingPositionConfiguration => L<Paws::KinesisAnalyticsV2::InputStartingPositionConfiguration>

The point at which you want Kinesis Data Analytics to start reading
records from the specified streaming source discovery purposes.



=head2 ResourceARN => Str

The Amazon Resource Name (ARN) of the streaming source.



=head2 S3Configuration => L<Paws::KinesisAnalyticsV2::S3Configuration>

Specify this parameter to discover a schema from data in an Amazon S3
object.



=head2 B<REQUIRED> ServiceExecutionRole => Str

The ARN of the role that is used to access the streaming source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DiscoverInputSchema in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

