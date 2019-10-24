# Generated from default/object.tt
package Paws::CodeCommit::ConflictResolution;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_ReplaceContentEntry CodeCommit_SetFileModeEntry CodeCommit_DeleteFileEntry/;
  has DeleteFiles => (is => 'ro', isa => ArrayRef[CodeCommit_DeleteFileEntry]);
  has ReplaceContents => (is => 'ro', isa => ArrayRef[CodeCommit_ReplaceContentEntry]);
  has SetFileModes => (is => 'ro', isa => ArrayRef[CodeCommit_SetFileModeEntry]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeleteFiles' => {
                                  'class' => 'Paws::CodeCommit::DeleteFileEntry',
                                  'type' => 'ArrayRef[CodeCommit_DeleteFileEntry]'
                                },
               'SetFileModes' => {
                                   'class' => 'Paws::CodeCommit::SetFileModeEntry',
                                   'type' => 'ArrayRef[CodeCommit_SetFileModeEntry]'
                                 },
               'ReplaceContents' => {
                                      'class' => 'Paws::CodeCommit::ReplaceContentEntry',
                                      'type' => 'ArrayRef[CodeCommit_ReplaceContentEntry]'
                                    }
             },
  'NameInRequest' => {
                       'DeleteFiles' => 'deleteFiles',
                       'SetFileModes' => 'setFileModes',
                       'ReplaceContents' => 'replaceContents'
                     }
}
;
    return $Params_map;
  }


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


=head2 DeleteFiles => ArrayRef[CodeCommit_DeleteFileEntry]

  Files that will be deleted as part of the merge conflict resolution.


=head2 ReplaceContents => ArrayRef[CodeCommit_ReplaceContentEntry]

  Files that will have content replaced as part of the merge conflict
resolution.


=head2 SetFileModes => ArrayRef[CodeCommit_SetFileModeEntry]

  File modes that will be set as part of the merge conflict resolution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

