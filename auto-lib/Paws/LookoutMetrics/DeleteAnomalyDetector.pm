
package Paws::LookoutMetrics::DeleteAnomalyDetector;
  use Moose;
  has AnomalyDetectorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnomalyDetector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DeleteAnomalyDetector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::DeleteAnomalyDetectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DeleteAnomalyDetector - Arguments for method DeleteAnomalyDetector on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAnomalyDetector on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method DeleteAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAnomalyDetector.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $DeleteAnomalyDetectorResponse = $lookoutmetrics->DeleteAnomalyDetector(
      AnomalyDetectorArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/DeleteAnomalyDetector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalyDetectorArn => Str

The ARN of the detector to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAnomalyDetector in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

