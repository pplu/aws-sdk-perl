
package Paws::Greengrass::UpdateConnectivityInfoResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateConnectivityInfoResponse

=head1 ATTRIBUTES


=head2 Message => Str

Response Text


=head2 Version => Str

New Version


=head2 _request_id => Str


=cut

