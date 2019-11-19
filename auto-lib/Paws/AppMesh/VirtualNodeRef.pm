# Generated from default/object.tt
package Paws::AppMesh::VirtualNodeRef;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has MeshName => (is => 'ro', isa => Str, required => 1);
  has VirtualNodeName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VirtualNodeName' => {
                                      'type' => 'Str'
                                    },
               'MeshName' => {
                               'type' => 'Str'
                             },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'IsRequired' => {
                    'Arn' => 1,
                    'MeshName' => 1,
                    'VirtualNodeName' => 1
                  },
  'NameInRequest' => {
                       'VirtualNodeName' => 'virtualNodeName',
                       'Arn' => 'arn',
                       'MeshName' => 'meshName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualNodeRef

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualNodeRef object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VirtualNodeName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualNodeRef object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object that represents a virtual node returned by a list operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The full Amazon Resource Name (ARN) for the virtual node.


=head2 B<REQUIRED> MeshName => Str

  The name of the service mesh that the virtual node resides in.


=head2 B<REQUIRED> VirtualNodeName => Str

  The name of the virtual node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

