
package Paws::ES::CreateOutboundCrossClusterSearchConnectionResponse;
  use Moose;
  has ConnectionAlias => (is => 'ro', isa => 'Str');
  has ConnectionStatus => (is => 'ro', isa => 'Paws::ES::OutboundCrossClusterSearchConnectionStatus');
  has CrossClusterSearchConnectionId => (is => 'ro', isa => 'Str');
  has DestinationDomainInfo => (is => 'ro', isa => 'Paws::ES::DomainInformation');
  has SourceDomainInfo => (is => 'ro', isa => 'Paws::ES::DomainInformation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CreateOutboundCrossClusterSearchConnectionResponse

=head1 ATTRIBUTES


=head2 ConnectionAlias => Str

Specifies the connection alias provided during the create connection
request.


=head2 ConnectionStatus => L<Paws::ES::OutboundCrossClusterSearchConnectionStatus>

Specifies the C<OutboundCrossClusterSearchConnectionStatus> for the
newly created connection.


=head2 CrossClusterSearchConnectionId => Str

Unique id for the created outbound connection, which is used for
subsequent operations on connection.


=head2 DestinationDomainInfo => L<Paws::ES::DomainInformation>

Specifies the C<DomainInformation> for the destination Elasticsearch
domain.


=head2 SourceDomainInfo => L<Paws::ES::DomainInformation>

Specifies the C<DomainInformation> for the source Elasticsearch domain.


=head2 _request_id => Str


=cut

