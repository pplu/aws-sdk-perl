package Paws::CodeCommit::Location;
  use Moose;
  has FilePath => (is => 'ro', isa => 'Str', request_name => 'filePath', traits => ['NameInRequest']);
  has FilePosition => (is => 'ro', isa => 'Int', request_name => 'filePosition', traits => ['NameInRequest']);
  has RelativeFileVersion => (is => 'ro', isa => 'Str', request_name => 'relativeFileVersion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Location object:

  $service_obj->Method(Att1 => { FilePath => $value, ..., RelativeFileVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Location object:

  $result = $service_obj->Method(...);
  $result->Att1->FilePath

=head1 DESCRIPTION

Returns information about the location of a change or comment in the
comparison between two commits or a pull request.

=head1 ATTRIBUTES


=head2 FilePath => Str

  The name of the file being compared, including its extension and
subdirectory, if any.


=head2 FilePosition => Int

  The position of a change within a compared file, in line number format.


=head2 RelativeFileVersion => Str

  In a comparison of commits or a pull request, whether the change is in
the 'before' or 'after' of that comparison.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

