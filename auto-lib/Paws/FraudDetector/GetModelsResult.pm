
package Paws::FraudDetector::GetModelsResult;
  use Moose;
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Model]', traits => ['NameInRequest'], request_name => 'models' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetModelsResult

=head1 ATTRIBUTES


=head2 Models => ArrayRef[L<Paws::FraudDetector::Model>]

The returned models.


=head2 NextToken => Str

The next token for subsequent requests.


=head2 _request_id => Str


=cut

1;