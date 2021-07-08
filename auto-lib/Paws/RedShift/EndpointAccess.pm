
package Paws::RedShift::EndpointAccess;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has EndpointCreateTime => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has EndpointStatus => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has ResourceOwner => (is => 'ro', isa => 'Str');
  has SubnetGroupName => (is => 'ro', isa => 'Str');
  has VpcEndpoint => (is => 'ro', isa => 'Paws::RedShift::VpcEndpoint');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::VpcSecurityGroupMembership]', request_name => 'VpcSecurityGroup', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::EndpointAccess

=head1 ATTRIBUTES


=head2 Address => Str

The DNS address of the endpoint.


=head2 ClusterIdentifier => Str

The cluster identifier of the cluster associated with the endpoint.


=head2 EndpointCreateTime => Str

The time (UTC) that the endpoint was created.


=head2 EndpointName => Str

The name of the endpoint.


=head2 EndpointStatus => Str

The status of the endpoint.


=head2 Port => Int

The port number on which the cluster accepts incoming connections.


=head2 ResourceOwner => Str

The AWS account ID of the owner of the cluster.


=head2 SubnetGroupName => Str

The subnet group name where Amazon Redshift chooses to deploy the
endpoint.


=head2 VpcEndpoint => L<Paws::RedShift::VpcEndpoint>




=head2 VpcSecurityGroups => ArrayRef[L<Paws::RedShift::VpcSecurityGroupMembership>]

The security groups associated with the endpoint.


=head2 _request_id => Str


=cut

