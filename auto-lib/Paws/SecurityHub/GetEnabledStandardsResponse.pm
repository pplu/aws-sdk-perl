
package Paws::SecurityHub::GetEnabledStandardsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StandardsSubscriptions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StandardsSubscription]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetEnabledStandardsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that is required for pagination.


=head2 StandardsSubscriptions => ArrayRef[L<Paws::SecurityHub::StandardsSubscription>]

The standards subscription details returned by the operation.


=head2 _request_id => Str


=cut

