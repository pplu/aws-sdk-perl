# Generated from default/object.tt
package Paws::AppMesh::MeshSpec;
  use Moo;
  use Types::Standard qw//;
  use Paws::AppMesh::Types qw/AppMesh_EgressFilter/;
  has EgressFilter => (is => 'ro', isa => AppMesh_EgressFilter);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EgressFilter' => {
                                   'class' => 'Paws::AppMesh::EgressFilter',
                                   'type' => 'AppMesh_EgressFilter'
                                 }
             },
  'NameInRequest' => {
                       'EgressFilter' => 'egressFilter'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::MeshSpec

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::MeshSpec object:

  $service_obj->Method(Att1 => { EgressFilter => $value, ..., EgressFilter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::MeshSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->EgressFilter

=head1 DESCRIPTION

An object that represents the specification of a service mesh.

=head1 ATTRIBUTES


=head2 EgressFilter => AppMesh_EgressFilter

  The egress filter rules for the service mesh.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

