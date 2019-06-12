package Paws::CodeCommit::MergeHunk;
  use Moose;
  has Base => (is => 'ro', isa => 'Paws::CodeCommit::MergeHunkDetail', request_name => 'base', traits => ['NameInRequest']);
  has Destination => (is => 'ro', isa => 'Paws::CodeCommit::MergeHunkDetail', request_name => 'destination', traits => ['NameInRequest']);
  has IsConflict => (is => 'ro', isa => 'Bool', request_name => 'isConflict', traits => ['NameInRequest']);
  has Source => (is => 'ro', isa => 'Paws::CodeCommit::MergeHunkDetail', request_name => 'source', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergeHunk

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::MergeHunk object:

  $service_obj->Method(Att1 => { Base => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::MergeHunk object:

  $result = $service_obj->Method(...);
  $result->Att1->Base

=head1 DESCRIPTION

Information about merge hunks in a merge or pull request operation.

=head1 ATTRIBUTES


=head2 Base => L<Paws::CodeCommit::MergeHunkDetail>

  Information about the merge hunk in the base of a merge or pull
request.


=head2 Destination => L<Paws::CodeCommit::MergeHunkDetail>

  Information about the merge hunk in the destination of a merge or pull
request.


=head2 IsConflict => Bool

  A Boolean value indicating whether a combination of hunks contains a
conflict. Conflicts occur when the same file or the same lines in a
file were modified in both the source and destination of a merge or
pull request. Valid values include true, false, and null.


=head2 Source => L<Paws::CodeCommit::MergeHunkDetail>

  Information about the merge hunk in the source of a merge or pull
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

