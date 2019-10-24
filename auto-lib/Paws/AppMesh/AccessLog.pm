# Generated from default/object.tt
package Paws::AppMesh::AccessLog;
  use Moo;
  use Types::Standard qw//;
  use Paws::AppMesh::Types qw/AppMesh_FileAccessLog/;
  has File => (is => 'ro', isa => AppMesh_FileAccessLog);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'File' => {
                           'class' => 'Paws::AppMesh::FileAccessLog',
                           'type' => 'AppMesh_FileAccessLog'
                         }
             },
  'NameInRequest' => {
                       'File' => 'file'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::AccessLog

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::AccessLog object:

  $service_obj->Method(Att1 => { File => $value, ..., File => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::AccessLog object:

  $result = $service_obj->Method(...);
  $result->Att1->File

=head1 DESCRIPTION

An object representing the access logging information for a virtual
node.

=head1 ATTRIBUTES


=head2 File => AppMesh_FileAccessLog

  The file object to send virtual node access logs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

