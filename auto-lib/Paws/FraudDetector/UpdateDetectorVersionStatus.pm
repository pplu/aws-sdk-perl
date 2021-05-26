
package Paws::FraudDetector::UpdateDetectorVersionStatus;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has DetectorVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionId' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDetectorVersionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::UpdateDetectorVersionStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::UpdateDetectorVersionStatus - Arguments for method UpdateDetectorVersionStatus on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDetectorVersionStatus on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method UpdateDetectorVersionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDetectorVersionStatus.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $UpdateDetectorVersionStatusResult =
      $frauddetector->UpdateDetectorVersionStatus(
      DetectorId        => 'Myidentifier',
      DetectorVersionId => 'MynonEmptyString',
      Status            => 'DRAFT',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/UpdateDetectorVersionStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The detector ID.



=head2 B<REQUIRED> DetectorVersionId => Str

The detector version ID.



=head2 B<REQUIRED> Status => Str

The new status.

Valid values are: C<"DRAFT">, C<"ACTIVE">, C<"INACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDetectorVersionStatus in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

