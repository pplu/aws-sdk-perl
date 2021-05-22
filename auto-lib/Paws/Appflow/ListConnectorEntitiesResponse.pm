
package Paws::Appflow::ListConnectorEntitiesResponse;
  use Moose;
  has ConnectorEntityMap => (is => 'ro', isa => 'Paws::Appflow::ConnectorEntityMap', traits => ['NameInRequest'], request_name => 'connectorEntityMap', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ListConnectorEntitiesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorEntityMap => L<Paws::Appflow::ConnectorEntityMap>

The response of C<ListConnectorEntities> lists entities grouped by
category. This map's key represents the group name, and its value
contains the list of entities belonging to that group.


=head2 _request_id => Str


=cut

