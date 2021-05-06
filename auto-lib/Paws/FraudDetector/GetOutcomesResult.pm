
package Paws::FraudDetector::GetOutcomesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Outcomes => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Outcome]', traits => ['NameInRequest'], request_name => 'outcomes' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetOutcomesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The next page token for subsequent requests.


=head2 Outcomes => ArrayRef[L<Paws::FraudDetector::Outcome>]

The outcomes.


=head2 _request_id => Str


=cut

1;