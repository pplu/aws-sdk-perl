# Generated from json/callresult_class.tt

package Paws::CodeCommit::PutFileOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has BlobId => (is => 'ro', isa => Str, required => 1);
  has CommitId => (is => 'ro', isa => Str, required => 1);
  has TreeId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CommitId' => 1,
                    'TreeId' => 1,
                    'BlobId' => 1
                  },
  'NameInRequest' => {
                       'CommitId' => 'commitId',
                       'TreeId' => 'treeId',
                       'BlobId' => 'blobId'
                     },
  'types' => {
               'CommitId' => {
                               'type' => 'Str'
                             },
               'TreeId' => {
                             'type' => 'Str'
                           },
               'BlobId' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PutFileOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlobId => Str

The ID of the blob, which is its SHA-1 pointer.


=head2 B<REQUIRED> CommitId => Str

The full SHA of the commit that contains this file change.


=head2 B<REQUIRED> TreeId => Str

The full SHA-1 pointer of the tree information for the commit that
contains this file change.


=head2 _request_id => Str


=cut

1;