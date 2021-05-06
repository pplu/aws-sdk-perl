
package Paws::FraudDetector::BatchCreateVariableResult;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::BatchCreateVariableError]', traits => ['NameInRequest'], request_name => 'errors' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::BatchCreateVariableResult

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::FraudDetector::BatchCreateVariableError>]

Provides the errors for the C<BatchCreateVariable> request.


=head2 _request_id => Str


=cut

1;