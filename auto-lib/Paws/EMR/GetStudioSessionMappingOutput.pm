
package Paws::EMR::GetStudioSessionMappingOutput;
  use Moose;
  has SessionMapping => (is => 'ro', isa => 'Paws::EMR::SessionMappingDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetStudioSessionMappingOutput

=head1 ATTRIBUTES


=head2 SessionMapping => L<Paws::EMR::SessionMappingDetail>

The session mapping details for the specified Amazon EMR Studio and
identity, including session policy ARN and creation time.


=head2 _request_id => Str


=cut

1;