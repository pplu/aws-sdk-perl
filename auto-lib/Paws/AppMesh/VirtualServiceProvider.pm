# Generated from default/object.tt
package Paws::AppMesh::VirtualServiceProvider;
  use Moo;
  use Types::Standard qw//;
  use Paws::AppMesh::Types qw/AppMesh_VirtualNodeServiceProvider AppMesh_VirtualRouterServiceProvider/;
  has VirtualNode => (is => 'ro', isa => AppMesh_VirtualNodeServiceProvider);
  has VirtualRouter => (is => 'ro', isa => AppMesh_VirtualRouterServiceProvider);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VirtualRouter' => {
                                    'class' => 'Paws::AppMesh::VirtualRouterServiceProvider',
                                    'type' => 'AppMesh_VirtualRouterServiceProvider'
                                  },
               'VirtualNode' => {
                                  'class' => 'Paws::AppMesh::VirtualNodeServiceProvider',
                                  'type' => 'AppMesh_VirtualNodeServiceProvider'
                                }
             },
  'NameInRequest' => {
                       'VirtualRouter' => 'virtualRouter',
                       'VirtualNode' => 'virtualNode'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualServiceProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualServiceProvider object:

  $service_obj->Method(Att1 => { VirtualNode => $value, ..., VirtualRouter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualServiceProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->VirtualNode

=head1 DESCRIPTION

An object representing the provider for a virtual service.

=head1 ATTRIBUTES


=head2 VirtualNode => AppMesh_VirtualNodeServiceProvider

  The virtual node associated with a virtual service.


=head2 VirtualRouter => AppMesh_VirtualRouterServiceProvider

  The virtual router associated with a virtual service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

