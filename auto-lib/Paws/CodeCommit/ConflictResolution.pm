package Paws::CodeCommit::ConflictResolution;
  use Moose;
  has DeleteFiles => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::DeleteFileEntry]', request_name => 'deleteFiles', traits => ['NameInRequest']);
  has ReplaceContents => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::ReplaceContentEntry]', request_name => 'replaceContents', traits => ['NameInRequest']);
  has SetFileModes => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::SetFileModeEntry]', request_name => 'setFileModes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ConflictResolution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ConflictResolution object:

  $service_obj->Method(Att1 => { DeleteFiles => $value, ..., SetFileModes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ConflictResolution object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteFiles

=head1 DESCRIPTION

A list of inputs to use when resolving conflicts during a merge if
AUTOMERGE is chosen as the conflict resolution strategy.

=head1 ATTRIBUTES


=head2 DeleteFiles => ArrayRef[L<Paws::CodeCommit::DeleteFileEntry>]

  Files that will be deleted as part of the merge conflict resolution.


=head2 ReplaceContents => ArrayRef[L<Paws::CodeCommit::ReplaceContentEntry>]

  Files that will have content replaced as part of the merge conflict
resolution.


=head2 SetFileModes => ArrayRef[L<Paws::CodeCommit::SetFileModeEntry>]

  File modes that will be set as part of the merge conflict resolution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

