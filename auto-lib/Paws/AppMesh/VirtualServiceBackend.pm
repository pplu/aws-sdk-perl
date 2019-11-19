# Generated from default/object.tt
package Paws::AppMesh::VirtualServiceBackend;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has VirtualServiceName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VirtualServiceName' => {
                                         'type' => 'Str'
                                       }
             },
  'IsRequired' => {
                    'VirtualServiceName' => 1
                  },
  'NameInRequest' => {
                       'VirtualServiceName' => 'virtualServiceName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualServiceBackend

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualServiceBackend object:

  $service_obj->Method(Att1 => { VirtualServiceName => $value, ..., VirtualServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualServiceBackend object:

  $result = $service_obj->Method(...);
  $result->Att1->VirtualServiceName

=head1 DESCRIPTION

An object that represents a virtual service backend for a virtual node.

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualServiceName => Str

  The name of the virtual service that is acting as a virtual node
backend.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

