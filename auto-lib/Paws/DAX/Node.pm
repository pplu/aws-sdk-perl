package Paws::DAX::Node;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Paws::DAX::Endpoint');
  has NodeCreateTime => (is => 'ro', isa => 'Str');
  has NodeId => (is => 'ro', isa => 'Str');
  has NodeStatus => (is => 'ro', isa => 'Str');
  has ParameterGroupStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::Node

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::Node object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., ParameterGroupStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::Node object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Represents an individual node within a DAX cluster.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone (AZ) in which the node has been deployed.


=head2 Endpoint => L<Paws::DAX::Endpoint>

  The endpoint for the node, consisting of a DNS name and a port number.
Client applications can connect directly to a node endpoint, if desired
(as an alternative to allowing DAX client software to intelligently
route requests and responses to nodes in the DAX cluster.


=head2 NodeCreateTime => Str

  The date and time (in UNIX epoch format) when the node was launched.


=head2 NodeId => Str

  A system-generated identifier for the node.


=head2 NodeStatus => Str

  The current status of the node. For example: C<available>.


=head2 ParameterGroupStatus => Str

  The status of the parameter group associated with this node. For
example, C<in-sync>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

