package Paws::AppMesh::VirtualNodeSpec;
  use Moose;
  has Backends => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'backends', traits => ['NameInRequest']);
  has Listeners => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::Listener]', request_name => 'listeners', traits => ['NameInRequest']);
  has ServiceDiscovery => (is => 'ro', isa => 'Paws::AppMesh::ServiceDiscovery', request_name => 'serviceDiscovery', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualNodeSpec

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualNodeSpec object:

  $service_obj->Method(Att1 => { Backends => $value, ..., ServiceDiscovery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualNodeSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->Backends

=head1 DESCRIPTION

An object representing the specification of a virtual node.

=head1 ATTRIBUTES


=head2 Backends => ArrayRef[Str|Undef]

  The backends to which the virtual node is expected to send outbound
traffic.


=head2 Listeners => ArrayRef[L<Paws::AppMesh::Listener>]

  The listeners from which the virtual node is expected to receive
inbound traffic.


=head2 ServiceDiscovery => L<Paws::AppMesh::ServiceDiscovery>

  The service discovery information for the virtual node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

