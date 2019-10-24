# Generated from default/object.tt
package Paws::AppMesh::VirtualNodeSpec;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_Logging AppMesh_Backend AppMesh_Listener AppMesh_ServiceDiscovery/;
  has Backends => (is => 'ro', isa => ArrayRef[AppMesh_Backend]);
  has Listeners => (is => 'ro', isa => ArrayRef[AppMesh_Listener]);
  has Logging => (is => 'ro', isa => AppMesh_Logging);
  has ServiceDiscovery => (is => 'ro', isa => AppMesh_ServiceDiscovery);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Logging' => {
                              'class' => 'Paws::AppMesh::Logging',
                              'type' => 'AppMesh_Logging'
                            },
               'Backends' => {
                               'class' => 'Paws::AppMesh::Backend',
                               'type' => 'ArrayRef[AppMesh_Backend]'
                             },
               'Listeners' => {
                                'class' => 'Paws::AppMesh::Listener',
                                'type' => 'ArrayRef[AppMesh_Listener]'
                              },
               'ServiceDiscovery' => {
                                       'class' => 'Paws::AppMesh::ServiceDiscovery',
                                       'type' => 'AppMesh_ServiceDiscovery'
                                     }
             },
  'NameInRequest' => {
                       'Logging' => 'logging',
                       'Backends' => 'backends',
                       'Listeners' => 'listeners',
                       'ServiceDiscovery' => 'serviceDiscovery'
                     }
}
;
    return $Params_map;
  }


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


=head2 Backends => ArrayRef[AppMesh_Backend]

  The backends that the virtual node is expected to send outbound traffic
to.


=head2 Listeners => ArrayRef[AppMesh_Listener]

  The listeners that the virtual node is expected to receive inbound
traffic from. Currently only one listener is supported per virtual
node.


=head2 Logging => AppMesh_Logging

  The inbound and outbound access logging information for the virtual
node.


=head2 ServiceDiscovery => AppMesh_ServiceDiscovery

  The service discovery information for the virtual node. If your virtual
node does not expect ingress traffic, you can omit this parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

