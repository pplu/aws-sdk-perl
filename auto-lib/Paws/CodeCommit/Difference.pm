package Paws::CodeCommit::Difference;
  use Moose;
  has AfterBlob => (is => 'ro', isa => 'Paws::CodeCommit::BlobMetadata', request_name => 'afterBlob', traits => ['NameInRequest']);
  has BeforeBlob => (is => 'ro', isa => 'Paws::CodeCommit::BlobMetadata', request_name => 'beforeBlob', traits => ['NameInRequest']);
  has ChangeType => (is => 'ro', isa => 'Str', request_name => 'changeType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Difference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Difference object:

  $service_obj->Method(Att1 => { AfterBlob => $value, ..., ChangeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Difference object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterBlob

=head1 DESCRIPTION

Returns information about a set of differences for a commit specifier.

=head1 ATTRIBUTES


=head2 AfterBlob => L<Paws::CodeCommit::BlobMetadata>

  Information about an C<afterBlob> data type object, including the ID,
the file mode permission code, and the path.


=head2 BeforeBlob => L<Paws::CodeCommit::BlobMetadata>

  Information about a C<beforeBlob> data type object, including the ID,
the file mode permission code, and the path.


=head2 ChangeType => Str

  Whether the change type of the difference is an addition (A), deletion
(D), or modification (M).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

