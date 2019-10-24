# Generated from json/callresult_class.tt

package Paws::CodeCommit::DeleteFileOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has BlobId => (is => 'ro', isa => Str, required => 1);
  has CommitId => (is => 'ro', isa => Str, required => 1);
  has FilePath => (is => 'ro', isa => Str, required => 1);
  has TreeId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TreeId' => {
                             'type' => 'Str'
                           },
               'BlobId' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FilePath' => {
                               'type' => 'Str'
                             },
               'CommitId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'TreeId' => 'treeId',
                       'BlobId' => 'blobId',
                       'FilePath' => 'filePath',
                       'CommitId' => 'commitId'
                     },
  'IsRequired' => {
                    'TreeId' => 1,
                    'BlobId' => 1,
                    'FilePath' => 1,
                    'CommitId' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteFileOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlobId => Str

The blob ID removed from the tree as part of deleting the file.


=head2 B<REQUIRED> CommitId => Str

The full commit ID of the commit that contains the change that deletes
the file.


=head2 B<REQUIRED> FilePath => Str

The fully-qualified path to the file that will be deleted, including
the full name and extension of that file.


=head2 B<REQUIRED> TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains the delete file change.


=head2 _request_id => Str


=cut

1;