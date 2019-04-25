package Paws::AppMesh::VirtualRouterSpec;
  use Moose;
  has ServiceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'serviceNames', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { ServiceNames => $value, ..., ServiceNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualRouterSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->ServiceNames

=head1 DESCRIPTION

An object representing the specification of a virtual router.

=head1 ATTRIBUTES


=head2 ServiceNames => ArrayRef[Str|Undef]

  The service mesh service names to associate with the virtual router.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

