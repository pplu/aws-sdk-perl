
package Paws::FraudDetector::BatchGetVariableResult;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::BatchGetVariableError]', traits => ['NameInRequest'], request_name => 'errors' );
  has Variables => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Variable]', traits => ['NameInRequest'], request_name => 'variables' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::BatchGetVariableResult

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::FraudDetector::BatchGetVariableError>]

The errors from the request.


=head2 Variables => ArrayRef[L<Paws::FraudDetector::Variable>]

The returned variables.


=head2 _request_id => Str


=cut

1;