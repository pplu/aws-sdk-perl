
package Paws::FraudDetector::DeleteDetectorVersion;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' , required => 1);
  has DetectorVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDetectorVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::DeleteDetectorVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::DeleteDetectorVersion - Arguments for method DeleteDetectorVersion on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDetectorVersion on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method DeleteDetectorVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDetectorVersion.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $DeleteDetectorVersionResult = $frauddetector->DeleteDetectorVersion(
      DetectorId        => 'Myidentifier',
      DetectorVersionId => 'MywholeNumberVersionString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/DeleteDetectorVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the parent detector for the detector version to delete.



=head2 B<REQUIRED> DetectorVersionId => Str

The ID of the detector version to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDetectorVersion in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

