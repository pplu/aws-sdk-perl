
package Paws::FraudDetector::GetEventTypesResult;
  use Moose;
  has EventTypes => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::EventType]', traits => ['NameInRequest'], request_name => 'eventTypes' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetEventTypesResult

=head1 ATTRIBUTES


=head2 EventTypes => ArrayRef[L<Paws::FraudDetector::EventType>]

An array of event types.


=head2 NextToken => Str

The next page token.


=head2 _request_id => Str


=cut

1;