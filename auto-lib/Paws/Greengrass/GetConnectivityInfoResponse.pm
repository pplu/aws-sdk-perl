
package Paws::Greengrass::GetConnectivityInfoResponse;
  use Moose;
  has ConnectivityInfo => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::ConnectivityInfo]');
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetConnectivityInfoResponse

=head1 ATTRIBUTES


=head2 ConnectivityInfo => ArrayRef[L<Paws::Greengrass::ConnectivityInfo>]

Connectivity info list.


=head2 Message => Str

A message about the connectivity info request.


=head2 _request_id => Str


=cut

