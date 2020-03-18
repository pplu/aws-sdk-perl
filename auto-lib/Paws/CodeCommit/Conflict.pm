package Paws::CodeCommit::Conflict;
  use Moose;
  has ConflictMetadata => (is => 'ro', isa => 'Paws::CodeCommit::ConflictMetadata', request_name => 'conflictMetadata', traits => ['NameInRequest']);
  has MergeHunks => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::MergeHunk]', request_name => 'mergeHunks', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Conflict

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Conflict object:

  $service_obj->Method(Att1 => { ConflictMetadata => $value, ..., MergeHunks => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Conflict object:

  $result = $service_obj->Method(...);
  $result->Att1->ConflictMetadata

=head1 DESCRIPTION

Information about conflicts in a merge operation.

=head1 ATTRIBUTES


=head2 ConflictMetadata => L<Paws::CodeCommit::ConflictMetadata>

  Metadata about a conflict in a merge operation.


=head2 MergeHunks => ArrayRef[L<Paws::CodeCommit::MergeHunk>]

  A list of hunks that contain the differences between files or lines
causing the conflict.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

