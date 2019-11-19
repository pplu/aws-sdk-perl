# Generated from default/object.tt
package Paws::AppMesh::VirtualRouterStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppMesh::Types qw//;
  has Status => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'Status' => 1
                  },
  'NameInRequest' => {
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::VirtualRouterStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::VirtualRouterStatus object:

  $service_obj->Method(Att1 => { Status => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::VirtualRouterStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

An object that represents the status of a virtual router.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

  The current status of the virtual router.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

