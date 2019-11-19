# Generated from json/callresult_class.tt

package Paws::CodeCommit::DescribeMergeConflictsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_ConflictMetadata CodeCommit_MergeHunk/;
  has BaseCommitId => (is => 'ro', isa => Str);
  has ConflictMetadata => (is => 'ro', isa => CodeCommit_ConflictMetadata, required => 1);
  has DestinationCommitId => (is => 'ro', isa => Str, required => 1);
  has MergeHunks => (is => 'ro', isa => ArrayRef[CodeCommit_MergeHunk], required => 1);
  has NextToken => (is => 'ro', isa => Str);
  has SourceCommitId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DestinationCommitId' => {
                                          'type' => 'Str'
                                        },
               'BaseCommitId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MergeHunks' => {
                                 'type' => 'ArrayRef[CodeCommit_MergeHunk]',
                                 'class' => 'Paws::CodeCommit::MergeHunk'
                               },
               'ConflictMetadata' => {
                                       'class' => 'Paws::CodeCommit::ConflictMetadata',
                                       'type' => 'CodeCommit_ConflictMetadata'
                                     },
               'SourceCommitId' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'ConflictMetadata' => 'conflictMetadata',
                       'SourceCommitId' => 'sourceCommitId',
                       'MergeHunks' => 'mergeHunks',
                       'BaseCommitId' => 'baseCommitId',
                       'DestinationCommitId' => 'destinationCommitId',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'ConflictMetadata' => 1,
                    'SourceCommitId' => 1,
                    'MergeHunks' => 1,
                    'DestinationCommitId' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DescribeMergeConflictsOutput

=head1 ATTRIBUTES


=head2 BaseCommitId => Str

The commit ID of the merge base.


=head2 B<REQUIRED> ConflictMetadata => CodeCommit_ConflictMetadata

Contains metadata about the conflicts found in the merge.


=head2 B<REQUIRED> DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 B<REQUIRED> MergeHunks => ArrayRef[CodeCommit_MergeHunk]

A list of merge hunks of the differences between the files or lines.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;