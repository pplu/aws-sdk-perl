
package Paws::Chime::CreateChannelBanResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has Member => (is => 'ro', isa => 'Paws::Chime::Identity');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateChannelBanResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the response to the ban request.


=head2 Member => L<Paws::Chime::Identity>

The C<ChannelArn> and C<BannedIdentity> of the member in the ban
response.


=head2 _request_id => Str


=cut

