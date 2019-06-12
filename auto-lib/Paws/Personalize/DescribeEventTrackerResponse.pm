
package Paws::Personalize::DescribeEventTrackerResponse;
  use Moose;
  has EventTracker => (is => 'ro', isa => 'Paws::Personalize::EventTracker', traits => ['NameInRequest'], request_name => 'eventTracker' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeEventTrackerResponse

=head1 ATTRIBUTES


=head2 EventTracker => L<Paws::Personalize::EventTracker>

An object that describes the event tracker.


=head2 _request_id => Str


=cut

1;