
package Paws::Appflow::DescribeConnectorsResponse;
  use Moose;
  has ConnectorConfigurations => (is => 'ro', isa => 'Paws::Appflow::ConnectorConfigurationsMap', traits => ['NameInRequest'], request_name => 'connectorConfigurations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeConnectorsResponse

=head1 ATTRIBUTES


=head2 ConnectorConfigurations => L<Paws::Appflow::ConnectorConfigurationsMap>

The configuration that is applied to the connectors used in the flow.


=head2 NextToken => Str

The pagination token for the next page of data.


=head2 _request_id => Str


=cut

