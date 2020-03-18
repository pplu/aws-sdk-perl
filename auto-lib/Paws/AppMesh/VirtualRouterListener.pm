package Paws::AppMesh::VirtualRouterListener;
  use Moose;
  has PortMapping => (is => 'ro', isa => 'Paws::AppMesh::PortMapping', request_name => 'portMapping', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualRouterListener

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualRouterListener object:

  $service_obj->Method(Att1 => { PortMapping => $value, ..., PortMapping => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualRouterListener object:

  $result = $service_obj->Method(...);
  $result->Att1->PortMapping

=head1 DESCRIPTION

An object that represents a virtual router listener.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortMapping => L<Paws::AppMesh::PortMapping>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

