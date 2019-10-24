# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetFolderOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_SymbolicLink CodeCommit_SubModule CodeCommit_File CodeCommit_Folder/;
  has CommitId => (is => 'ro', isa => Str, required => 1);
  has Files => (is => 'ro', isa => ArrayRef[CodeCommit_File]);
  has FolderPath => (is => 'ro', isa => Str, required => 1);
  has SubFolders => (is => 'ro', isa => ArrayRef[CodeCommit_Folder]);
  has SubModules => (is => 'ro', isa => ArrayRef[CodeCommit_SubModule]);
  has SymbolicLinks => (is => 'ro', isa => ArrayRef[CodeCommit_SymbolicLink]);
  has TreeId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SubModules' => {
                                 'class' => 'Paws::CodeCommit::SubModule',
                                 'type' => 'ArrayRef[CodeCommit_SubModule]'
                               },
               'SubFolders' => {
                                 'class' => 'Paws::CodeCommit::Folder',
                                 'type' => 'ArrayRef[CodeCommit_Folder]'
                               },
               'FolderPath' => {
                                 'type' => 'Str'
                               },
               'CommitId' => {
                               'type' => 'Str'
                             },
               'TreeId' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Files' => {
                            'class' => 'Paws::CodeCommit::File',
                            'type' => 'ArrayRef[CodeCommit_File]'
                          },
               'SymbolicLinks' => {
                                    'class' => 'Paws::CodeCommit::SymbolicLink',
                                    'type' => 'ArrayRef[CodeCommit_SymbolicLink]'
                                  }
             },
  'NameInRequest' => {
                       'SubModules' => 'subModules',
                       'TreeId' => 'treeId',
                       'SubFolders' => 'subFolders',
                       'FolderPath' => 'folderPath',
                       'SymbolicLinks' => 'symbolicLinks',
                       'Files' => 'files',
                       'CommitId' => 'commitId'
                     },
  'IsRequired' => {
                    'FolderPath' => 1,
                    'CommitId' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetFolderOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommitId => Str

The full commit ID used as a reference for which version of the folder
content is returned.


=head2 Files => ArrayRef[CodeCommit_File]

The list of files that exist in the specified folder, if any.


=head2 B<REQUIRED> FolderPath => Str

The fully-qualified path of the folder whose contents are returned.


=head2 SubFolders => ArrayRef[CodeCommit_Folder]

The list of folders that exist beneath the specified folder, if any.


=head2 SubModules => ArrayRef[CodeCommit_SubModule]

The list of submodules that exist in the specified folder, if any.


=head2 SymbolicLinks => ArrayRef[CodeCommit_SymbolicLink]

The list of symbolic links to other files and folders that exist in the
specified folder, if any.


=head2 TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains the folder.


=head2 _request_id => Str


=cut

1;