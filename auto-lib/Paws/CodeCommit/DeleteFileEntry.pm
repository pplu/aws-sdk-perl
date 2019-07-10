package Paws::CodeCommit::DeleteFileEntry;
  use Moose;
  has FilePath => (is => 'ro', isa => 'Str', request_name => 'filePath', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteFileEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::DeleteFileEntry object:

  $service_obj->Method(Att1 => { FilePath => $value, ..., FilePath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::DeleteFileEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->FilePath

=head1 DESCRIPTION

A file that will be deleted as part of a commit.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilePath => Str

  The full path of the file that will be deleted, including the name of
the file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

