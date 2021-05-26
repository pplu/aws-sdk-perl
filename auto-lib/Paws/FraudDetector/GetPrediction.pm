
package Paws::FraudDetector::GetPrediction;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has DetectorVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionId' );
  has EventAttributes => (is => 'ro', isa => 'Paws::FraudDetector::EventAttributeMap', traits => ['NameInRequest'], request_name => 'eventAttributes' );
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId' , required => 1);
  has ExternalModelEndpointDataBlobs => (is => 'ro', isa => 'Paws::FraudDetector::ExternalModelEndpointDataBlobMap', traits => ['NameInRequest'], request_name => 'externalModelEndpointDataBlobs' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPrediction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::GetPredictionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetPrediction - Arguments for method GetPrediction on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPrediction on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method GetPrediction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPrediction.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $GetPredictionResult = $frauddetector->GetPrediction(
      DetectorId        => 'Mystring',
      EventId           => 'Mystring',
      DetectorVersionId => 'Mystring',    # OPTIONAL
      EventAttributes   => {
        'MyattributeKey' =>
          'MyattributeValue',    # key: min: 1, max: 64, value: min: 1, max: 256
      },    # OPTIONAL
      ExternalModelEndpointDataBlobs => {
        'Mystring' => {
          ByteBuffer  => 'Blobblob',         # OPTIONAL
          ContentType => 'MycontentType',    # min: 1, max: 1024; OPTIONAL
        },
      },    # OPTIONAL
    );

    # Results:
    my $ModelScores = $GetPredictionResult->ModelScores;
    my $Outcomes    = $GetPredictionResult->Outcomes;

    # Returns a L<Paws::FraudDetector::GetPredictionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/GetPrediction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detector ID.



=head2 DetectorVersionId => Str

The detector version ID.



=head2 EventAttributes => L<Paws::FraudDetector::EventAttributeMap>

Names of variables you defined in Amazon Fraud Detector to represent
event data elements and their corresponding values for the event you
are sending for evaluation.



=head2 B<REQUIRED> EventId => Str

The unique ID used to identify the event.



=head2 ExternalModelEndpointDataBlobs => L<Paws::FraudDetector::ExternalModelEndpointDataBlobMap>

The Amazon SageMaker model endpoint input data blobs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPrediction in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

