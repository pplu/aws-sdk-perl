# Generated from default/object.tt
package Paws::CodeCommit::Conflict;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_MergeHunk CodeCommit_ConflictMetadata/;
  has ConflictMetadata => (is => 'ro', isa => CodeCommit_ConflictMetadata);
  has MergeHunks => (is => 'ro', isa => ArrayRef[CodeCommit_MergeHunk]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MergeHunks' => {
                                 'class' => 'Paws::CodeCommit::MergeHunk',
                                 'type' => 'ArrayRef[CodeCommit_MergeHunk]'
                               },
               'ConflictMetadata' => {
                                       'class' => 'Paws::CodeCommit::ConflictMetadata',
                                       'type' => 'CodeCommit_ConflictMetadata'
                                     }
             },
  'NameInRequest' => {
                       'MergeHunks' => 'mergeHunks',
                       'ConflictMetadata' => 'conflictMetadata'
                     }
}
;
    return $Params_map;
  }


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


=head2 ConflictMetadata => CodeCommit_ConflictMetadata

  Metadata about a conflict in a merge operation.


=head2 MergeHunks => ArrayRef[CodeCommit_MergeHunk]

  A list of hunks that contain the differences between files or lines
causing the conflict.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

