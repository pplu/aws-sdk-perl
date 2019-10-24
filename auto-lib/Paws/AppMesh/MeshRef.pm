# Generated from default/object.tt
package Paws::AppMesh::MeshRef;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MeshName' => {
                               'type' => 'Str'
                             },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'MeshName' => 'meshName',
                       'Arn' => 'arn'
                     },
  'IsRequired' => {
                    'MeshName' => 1,
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::MeshRef

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::MeshRef object:

  $service_obj->Method(Att1 => { Arn => $value, ..., MeshName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::MeshRef object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object representing a service mesh returned by a list operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The full Amazon Resource Name (ARN) of the service mesh.


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

