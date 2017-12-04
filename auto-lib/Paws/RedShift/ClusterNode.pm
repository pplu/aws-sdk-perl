package Paws::RedShift::ClusterNode;
  use Moose;
  has NodeRole => (is => 'ro', isa => 'Str');
  has PrivateIPAddress => (is => 'ro', isa => 'Str');
  has PublicIPAddress => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterNode

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterNode object:

  $service_obj->Method(Att1 => { NodeRole => $value, ..., PublicIPAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterNode object:

  $result = $service_obj->Method(...);
  $result->Att1->NodeRole

=head1 DESCRIPTION

The identifier of a node in a cluster.

=head1 ATTRIBUTES


=head2 NodeRole => Str

  Whether the node is a leader node or a compute node.


=head2 PrivateIPAddress => Str

  The private IP address of a node within a cluster.


=head2 PublicIPAddress => Str

  The public IP address of a node within a cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

