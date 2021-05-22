
package Paws::FraudDetector::CreateBatchPredictionJob;
  use Moose;
  has DetectorName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorName' , required => 1);
  has DetectorVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersion' );
  has EventTypeName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTypeName' , required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRoleArn' , required => 1);
  has InputPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inputPath' , required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId' , required => 1);
  has OutputPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputPath' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBatchPredictionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::CreateBatchPredictionJobResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CreateBatchPredictionJob - Arguments for method CreateBatchPredictionJob on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBatchPredictionJob on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method CreateBatchPredictionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBatchPredictionJob.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $CreateBatchPredictionJobResult =
      $frauddetector->CreateBatchPredictionJob(
      DetectorName    => 'Myidentifier',
      EventTypeName   => 'Myidentifier',
      IamRoleArn      => 'MyiamRoleArn',
      InputPath       => 'Mys3BucketLocation',
      JobId           => 'Myidentifier',
      OutputPath      => 'Mys3BucketLocation',
      DetectorVersion => 'MywholeNumberVersionString',    # OPTIONAL
      Tags            => [
        {
          Key   => 'MytagKey',                            # min: 1, max: 128
          Value => 'MytagValue',                          # max: 256

        },
        ...
      ],                                                  # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/CreateBatchPredictionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorName => Str

The name of the detector.



=head2 DetectorVersion => Str

The detector version.



=head2 B<REQUIRED> EventTypeName => Str

The name of the event type.



=head2 B<REQUIRED> IamRoleArn => Str

The ARN of the IAM role to use for this job request.



=head2 B<REQUIRED> InputPath => Str

The Amazon S3 location of your training file.



=head2 B<REQUIRED> JobId => Str

The ID of the batch prediction job.



=head2 B<REQUIRED> OutputPath => Str

The Amazon S3 location of your output file.



=head2 Tags => ArrayRef[L<Paws::FraudDetector::Tag>]

A collection of key and value pairs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBatchPredictionJob in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

