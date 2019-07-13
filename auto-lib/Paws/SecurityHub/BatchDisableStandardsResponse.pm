
package Paws::SecurityHub::BatchDisableStandardsResponse;
  use Moose;
  has StandardsSubscriptions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StandardsSubscription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchDisableStandardsResponse

=head1 ATTRIBUTES


=head2 StandardsSubscriptions => ArrayRef[L<Paws::SecurityHub::StandardsSubscription>]

The details of the standards subscriptions that were disabled.


=head2 _request_id => Str


=cut

