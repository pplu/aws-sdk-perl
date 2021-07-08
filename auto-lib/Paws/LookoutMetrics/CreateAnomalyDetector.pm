
package Paws::LookoutMetrics::CreateAnomalyDetector;
  use Moose;
  has AnomalyDetectorConfig => (is => 'ro', isa => 'Paws::LookoutMetrics::AnomalyDetectorConfig', required => 1);
  has AnomalyDetectorDescription => (is => 'ro', isa => 'Str');
  has AnomalyDetectorName => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::LookoutMetrics::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAnomalyDetector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateAnomalyDetector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::CreateAnomalyDetectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::CreateAnomalyDetector - Arguments for method CreateAnomalyDetector on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAnomalyDetector on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method CreateAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAnomalyDetector.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $CreateAnomalyDetectorResponse = $lookoutmetrics->CreateAnomalyDetector(
      AnomalyDetectorConfig => {
        AnomalyDetectorFrequency =>
          'P1D',    # values: P1D, PT1H, PT10M, PT5M; OPTIONAL
      },
      AnomalyDetectorName        => 'MyAnomalyDetectorName',
      AnomalyDetectorDescription => 'MyAnomalyDetectorDescription',   # OPTIONAL
      KmsKeyArn                  => 'MyKmsKeyArn',                    # OPTIONAL
      Tags                       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AnomalyDetectorArn = $CreateAnomalyDetectorResponse->AnomalyDetectorArn;

    # Returns a L<Paws::LookoutMetrics::CreateAnomalyDetectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/CreateAnomalyDetector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorConfig => L<Paws::LookoutMetrics::AnomalyDetectorConfig>

Contains information about the configuration of the anomaly detector.



=head2 AnomalyDetectorDescription => Str

A description of the detector.



=head2 B<REQUIRED> AnomalyDetectorName => Str

The name of the detector.



=head2 KmsKeyArn => Str

The ARN of the KMS key to use to encrypt your data.



=head2 Tags => L<Paws::LookoutMetrics::TagMap>

A list of tags
(https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
to apply to the anomaly detector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAnomalyDetector in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

