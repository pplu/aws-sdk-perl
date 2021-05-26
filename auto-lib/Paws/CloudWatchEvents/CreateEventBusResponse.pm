
package Paws::CloudWatchEvents::CreateEventBusResponse;
  use Moose;
  has EventBusArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateEventBusResponse

=head1 ATTRIBUTES


=head2 EventBusArn => Str

The ARN of the new event bus.


=head2 _request_id => Str


=cut

1;