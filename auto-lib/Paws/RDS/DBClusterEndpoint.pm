
package Paws::RDS::DBClusterEndpoint;
  use Moose;
  has CustomEndpointType => (is => 'ro', isa => 'Str');
  has DBClusterEndpointArn => (is => 'ro', isa => 'Str');
  has DBClusterEndpointIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterEndpointResourceIdentifier => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str');
  has ExcludedMembers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StaticMembers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBClusterEndpoint

=head1 ATTRIBUTES


=head2 CustomEndpointType => Str

The type associated with a custom endpoint. One of: C<READER>, C<ANY>.


=head2 DBClusterEndpointArn => Str

The Amazon Resource Name (ARN) for the endpoint.


=head2 DBClusterEndpointIdentifier => Str

The identifier associated with the endpoint. This parameter is stored
as a lowercase string.


=head2 DBClusterEndpointResourceIdentifier => Str

A unique system-generated identifier for an endpoint. It remains the
same for the whole life of the endpoint.


=head2 DBClusterIdentifier => Str

The DB cluster identifier of the DB cluster associated with the
endpoint. This parameter is stored as a lowercase string.


=head2 Endpoint => Str

The DNS address of the endpoint.


=head2 EndpointType => Str

The type of the endpoint. One of: C<READER>, C<WRITER>, C<CUSTOM>.


=head2 ExcludedMembers => ArrayRef[Str|Undef]

List of DB instance identifiers that aren't part of the custom endpoint
group. All other eligible instances are reachable through the custom
endpoint. Only relevant if the list of static members is empty.


=head2 StaticMembers => ArrayRef[Str|Undef]

List of DB instance identifiers that are part of the custom endpoint
group.


=head2 Status => Str

The current status of the endpoint. One of: C<creating>, C<available>,
C<deleting>, C<modifying>.


=head2 _request_id => Str


=cut

