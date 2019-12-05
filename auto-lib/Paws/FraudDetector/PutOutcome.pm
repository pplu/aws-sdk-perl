
package Paws::FraudDetector::PutOutcome;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutOutcome');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FraudDetector::PutOutcomeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::PutOutcome - Arguments for method PutOutcome on L<Paws::FraudDetector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutOutcome on the
L<Amazon Fraud Detector|Paws::FraudDetector> service. Use the attributes of this class
as arguments to method PutOutcome.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutOutcome.

=head1 SYNOPSIS

    my $frauddetector = Paws->service('FraudDetector');
    my $PutOutcomeResult = $frauddetector->PutOutcome(
      Name        => 'Myidentifier',
      Description => 'Mydescription',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/frauddetector/PutOutcome>

=head1 ATTRIBUTES


=head2 Description => Str

The outcome description.



=head2 B<REQUIRED> Name => Str

The name of the outcome.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutOutcome in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

