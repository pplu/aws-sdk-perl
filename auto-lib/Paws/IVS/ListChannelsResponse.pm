
package Paws::IVS::ListChannelsResponse;
  use Moose;
  has Channels => (is => 'ro', isa => 'ArrayRef[Paws::IVS::ChannelSummary]', traits => ['NameInRequest'], request_name => 'channels', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListChannelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Channels => ArrayRef[L<Paws::IVS::ChannelSummary>]

List of the matching channels.


=head2 NextToken => Str

If there are more channels than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 _request_id => Str


=cut

