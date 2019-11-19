# Generated from default/object.tt
package Paws::CodeCommit::ConflictMetadata;
  use Moo;
  use Types::Standard qw/Bool Str Int/;
  use Paws::CodeCommit::Types qw/CodeCommit_IsBinaryFile CodeCommit_MergeOperations CodeCommit_FileModes CodeCommit_FileSizes CodeCommit_ObjectTypes/;
  has ContentConflict => (is => 'ro', isa => Bool);
  has FileModeConflict => (is => 'ro', isa => Bool);
  has FileModes => (is => 'ro', isa => CodeCommit_FileModes);
  has FilePath => (is => 'ro', isa => Str);
  has FileSizes => (is => 'ro', isa => CodeCommit_FileSizes);
  has IsBinaryFile => (is => 'ro', isa => CodeCommit_IsBinaryFile);
  has MergeOperations => (is => 'ro', isa => CodeCommit_MergeOperations);
  has NumberOfConflicts => (is => 'ro', isa => Int);
  has ObjectTypeConflict => (is => 'ro', isa => Bool);
  has ObjectTypes => (is => 'ro', isa => CodeCommit_ObjectTypes);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentConflict' => {
                                      'type' => 'Bool'
                                    },
               'FilePath' => {
                               'type' => 'Str'
                             },
               'FileModeConflict' => {
                                       'type' => 'Bool'
                                     },
               'FileModes' => {
                                'type' => 'CodeCommit_FileModes',
                                'class' => 'Paws::CodeCommit::FileModes'
                              },
               'NumberOfConflicts' => {
                                        'type' => 'Int'
                                      },
               'FileSizes' => {
                                'class' => 'Paws::CodeCommit::FileSizes',
                                'type' => 'CodeCommit_FileSizes'
                              },
               'IsBinaryFile' => {
                                   'class' => 'Paws::CodeCommit::IsBinaryFile',
                                   'type' => 'CodeCommit_IsBinaryFile'
                                 },
               'MergeOperations' => {
                                      'class' => 'Paws::CodeCommit::MergeOperations',
                                      'type' => 'CodeCommit_MergeOperations'
                                    },
               'ObjectTypeConflict' => {
                                         'type' => 'Bool'
                                       },
               'ObjectTypes' => {
                                  'type' => 'CodeCommit_ObjectTypes',
                                  'class' => 'Paws::CodeCommit::ObjectTypes'
                                }
             },
  'NameInRequest' => {
                       'MergeOperations' => 'mergeOperations',
                       'ObjectTypeConflict' => 'objectTypeConflict',
                       'ObjectTypes' => 'objectTypes',
                       'IsBinaryFile' => 'isBinaryFile',
                       'FileModes' => 'fileModes',
                       'NumberOfConflicts' => 'numberOfConflicts',
                       'FileSizes' => 'fileSizes',
                       'ContentConflict' => 'contentConflict',
                       'FilePath' => 'filePath',
                       'FileModeConflict' => 'fileModeConflict'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ConflictMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ConflictMetadata object:

  $service_obj->Method(Att1 => { ContentConflict => $value, ..., ObjectTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ConflictMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentConflict

=head1 DESCRIPTION

Information about the metadata for a conflict in a merge operation.

=head1 ATTRIBUTES


=head2 ContentConflict => Bool

  A boolean value indicating whether there are conflicts in the content
of a file.


=head2 FileModeConflict => Bool

  A boolean value indicating whether there are conflicts in the file mode
of a file.


=head2 FileModes => CodeCommit_FileModes

  The file modes of the file in the source, destination, and base of the
merge.


=head2 FilePath => Str

  The path of the file that contains conflicts.


=head2 FileSizes => CodeCommit_FileSizes

  The file sizes of the file in the source, destination, and base of the
merge.


=head2 IsBinaryFile => CodeCommit_IsBinaryFile

  A boolean value (true or false) indicating whether the file is binary
or textual in the source, destination, and base of the merge.


=head2 MergeOperations => CodeCommit_MergeOperations

  Whether an add, modify, or delete operation caused the conflict between
the source and destination of the merge.


=head2 NumberOfConflicts => Int

  The number of conflicts, including both hunk conflicts and metadata
conflicts.


=head2 ObjectTypeConflict => Bool

  A boolean value (true or false) indicating whether there are conflicts
between the branches in the object type of a file, folder, or
submodule.


=head2 ObjectTypes => CodeCommit_ObjectTypes

  Information about any object type conflicts in a merge operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

