
package Paws::FraudDetector::GetVariablesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Variables => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Variable]', traits => ['NameInRequest'], request_name => 'variables' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetVariablesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The next page token to be used in subsequent requests.


=head2 Variables => ArrayRef[L<Paws::FraudDetector::Variable>]

The names of the variables returned.


=head2 _request_id => Str


=cut

1;