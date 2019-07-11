package Paws::CodeCommit::MergeHunkDetail;
  use Moose;
  has EndLine => (is => 'ro', isa => 'Int', request_name => 'endLine', traits => ['NameInRequest']);
  has HunkContent => (is => 'ro', isa => 'Str', request_name => 'hunkContent', traits => ['NameInRequest']);
  has StartLine => (is => 'ro', isa => 'Int', request_name => 'startLine', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergeHunkDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::MergeHunkDetail object:

  $service_obj->Method(Att1 => { EndLine => $value, ..., StartLine => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::MergeHunkDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->EndLine

=head1 DESCRIPTION

Information about the details of a merge hunk that contains a conflict
in a merge or pull request operation.

=head1 ATTRIBUTES


=head2 EndLine => Int

  The end position of the hunk in the merge result.


=head2 HunkContent => Str

  The base-64 encoded content of the hunk merged region that might or
might not contain a conflict.


=head2 StartLine => Int

  The start position of the hunk in the merge result.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

