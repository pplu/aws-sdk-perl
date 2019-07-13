package Paws::CodeCommit::Folder;
  use Moose;
  has AbsolutePath => (is => 'ro', isa => 'Str', request_name => 'absolutePath', traits => ['NameInRequest']);
  has RelativePath => (is => 'ro', isa => 'Str', request_name => 'relativePath', traits => ['NameInRequest']);
  has TreeId => (is => 'ro', isa => 'Str', request_name => 'treeId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Folder

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Folder object:

  $service_obj->Method(Att1 => { AbsolutePath => $value, ..., TreeId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Folder object:

  $result = $service_obj->Method(...);
  $result->Att1->AbsolutePath

=head1 DESCRIPTION

Returns information about a folder in a repository.

=head1 ATTRIBUTES


=head2 AbsolutePath => Str

  The fully-qualified path of the folder in the repository.


=head2 RelativePath => Str

  The relative path of the specified folder from the folder where the
query originated.


=head2 TreeId => Str

  The full SHA-1 pointer of the tree information for the commit that
contains the folder.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

