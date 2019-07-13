package Paws::CodeCommit::SourceFileSpecifier;
  use Moose;
  has FilePath => (is => 'ro', isa => 'Str', request_name => 'filePath', traits => ['NameInRequest'], required => 1);
  has IsMove => (is => 'ro', isa => 'Bool', request_name => 'isMove', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::SourceFileSpecifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::SourceFileSpecifier object:

  $service_obj->Method(Att1 => { FilePath => $value, ..., IsMove => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::SourceFileSpecifier object:

  $result = $service_obj->Method(...);
  $result->Att1->FilePath

=head1 DESCRIPTION

Information about a source file that is part of changes made in a
commit.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilePath => Str

  The full path to the file, including the name of the file.


=head2 IsMove => Bool

  Whether to remove the source file from the parent commit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

