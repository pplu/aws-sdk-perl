
package Paws::IoTSiteWise::UpdatePortalResponse;
  use Moose;
  has PortalStatus => (is => 'ro', isa => 'Paws::IoTSiteWise::PortalStatus', traits => ['NameInRequest'], request_name => 'portalStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::UpdatePortalResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalStatus => L<Paws::IoTSiteWise::PortalStatus>

The status of the portal, which contains a state (C<UPDATING> after
successfully calling this operation) and any error message.


=head2 _request_id => Str


=cut

