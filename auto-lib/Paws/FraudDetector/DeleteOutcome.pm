
package Paws::FraudDetector::DeleteOutcome;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOutcome');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::DeleteOutcomeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::DeleteOutcome - Arguments for method DeleteOutcome on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteOutcome on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method DeleteOutcome.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteOutcome.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $DeleteOutcomeResult = $frauddetector->DeleteOutcome(
      Name => 'Myidentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/DeleteOutcome>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the outcome to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteOutcome in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

