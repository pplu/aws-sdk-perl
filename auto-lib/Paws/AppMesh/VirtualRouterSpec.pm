package Paws::AppMesh::VirtualRouterSpec;
  use Moose;
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::VirtualRouterListener]', request_name => 'listeners', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualRouterSpec

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualRouterSpec object:

  $service_obj->Method(Att1 => { Listeners => $value, ..., Listeners => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualRouterSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->Listeners

=head1 DESCRIPTION

An object that represents the specification of a virtual router.

=head1 ATTRIBUTES


=head2 Listeners => ArrayRef[L<Paws::AppMesh::VirtualRouterListener>]

  The listeners that the virtual router is expected to receive inbound
traffic from. You can specify one listener.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

