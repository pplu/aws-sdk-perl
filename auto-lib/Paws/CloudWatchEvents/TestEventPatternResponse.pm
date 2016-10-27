
package Paws::CloudWatchEvents::TestEventPatternResponse;
  use Moose;
  has Result => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::TestEventPatternResponse

=head1 ATTRIBUTES


=head2 Result => Bool

Indicates whether the event matches the event pattern.




=cut

1;