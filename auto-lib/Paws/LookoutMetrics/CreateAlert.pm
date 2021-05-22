
package Paws::LookoutMetrics::CreateAlert;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::LookoutMetrics::Action', required => 1);
  has AlertDescription => (is => 'ro', isa => 'Str');
  has AlertName => (is => 'ro', isa => 'Str', required => 1);
  has AlertSensitivityThreshold => (is => 'ro', isa => 'Int', required => 1);
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LookoutMetrics::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlert');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateAlert');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::CreateAlertResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::CreateAlert - Arguments for method CreateAlert on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlert on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method CreateAlert.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlert.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $CreateAlertResponse = $lookoutmetrics->CreateAlert(
      Action => {
        LambdaConfiguration => {
          LambdaArn => 'MyArn',    # max: 256
          RoleArn   => 'MyArn',    # max: 256

        },    # OPTIONAL
        SNSConfiguration => {
          RoleArn     => 'MyArn',    # max: 256
          SnsTopicArn => 'MyArn',    # max: 256

        },    # OPTIONAL
      },
      AlertName                 => 'MyAlertName',
      AlertSensitivityThreshold => 1,
      AnomalyDetectorArn        => 'MyArn',
      AlertDescription          => 'MyAlertDescription',    # OPTIONAL
      Tags                      => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AlertArn = $CreateAlertResponse->AlertArn;

    # Returns a L<Paws::LookoutMetrics::CreateAlertResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/CreateAlert>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => L<Paws::LookoutMetrics::Action>

Action that will be triggered when there is an alert.



=head2 AlertDescription => Str

A description of the alert.



=head2 B<REQUIRED> AlertName => Str

The name of the alert.



=head2 B<REQUIRED> AlertSensitivityThreshold => Int

An integer from 0 to 100 specifying the alert sensitivity threshold.



=head2 B<REQUIRED> AnomalyDetectorArn => Str

The ARN of the detector to which the alert is attached.



=head2 Tags => L<Paws::LookoutMetrics::TagMap>

A list of tags
(https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
to apply to the alert.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlert in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

