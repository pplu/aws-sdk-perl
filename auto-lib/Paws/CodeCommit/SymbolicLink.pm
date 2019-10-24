# Generated from default/object.tt
package Paws::CodeCommit::SymbolicLink;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has AbsolutePath => (is => 'ro', isa => Str);
  has BlobId => (is => 'ro', isa => Str);
  has FileMode => (is => 'ro', isa => Str);
  has RelativePath => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FileMode' => {
                               'type' => 'Str'
                             },
               'AbsolutePath' => {
                                   'type' => 'Str'
                                 },
               'RelativePath' => {
                                   'type' => 'Str'
                                 },
               'BlobId' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'FileMode' => 'fileMode',
                       'AbsolutePath' => 'absolutePath',
                       'RelativePath' => 'relativePath',
                       'BlobId' => 'blobId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::SymbolicLink

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::SymbolicLink object:

  $service_obj->Method(Att1 => { AbsolutePath => $value, ..., RelativePath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::SymbolicLink object:

  $result = $service_obj->Method(...);
  $result->Att1->AbsolutePath

=head1 DESCRIPTION

Returns information about a symbolic link in a repository folder.

=head1 ATTRIBUTES


=head2 AbsolutePath => Str

  The fully-qualified path to the folder that contains the symbolic link.


=head2 BlobId => Str

  The blob ID that contains the information about the symbolic link.


=head2 FileMode => Str

  The file mode permissions of the blob that cotains information about
the symbolic link.


=head2 RelativePath => Str

  The relative path of the symbolic link from the folder where the query
originated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

