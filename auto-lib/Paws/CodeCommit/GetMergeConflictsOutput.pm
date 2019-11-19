# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetMergeConflictsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::CodeCommit::Types qw/CodeCommit_ConflictMetadata/;
  has BaseCommitId => (is => 'ro', isa => Str);
  has ConflictMetadataList => (is => 'ro', isa => ArrayRef[CodeCommit_ConflictMetadata], required => 1);
  has DestinationCommitId => (is => 'ro', isa => Str, required => 1);
  has Mergeable => (is => 'ro', isa => Bool, required => 1);
  has NextToken => (is => 'ro', isa => Str);
  has SourceCommitId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ConflictMetadataList' => {
                                           'class' => 'Paws::CodeCommit::ConflictMetadata',
                                           'type' => 'ArrayRef[CodeCommit_ConflictMetadata]'
                                         },
               'BaseCommitId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DestinationCommitId' => {
                                          'type' => 'Str'
                                        },
               'Mergeable' => {
                                'type' => 'Bool'
                              },
               'SourceCommitId' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'SourceCommitId' => 1,
                    'ConflictMetadataList' => 1,
                    'Mergeable' => 1,
                    'DestinationCommitId' => 1
                  },
  'NameInRequest' => {
                       'Mergeable' => 'mergeable',
                       'SourceCommitId' => 'sourceCommitId',
                       'BaseCommitId' => 'baseCommitId',
                       'DestinationCommitId' => 'destinationCommitId',
                       'NextToken' => 'nextToken',
                       'ConflictMetadataList' => 'conflictMetadataList'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetMergeConflictsOutput

=head1 ATTRIBUTES


=head2 BaseCommitId => Str

The commit ID of the merge base.


=head2 B<REQUIRED> ConflictMetadataList => ArrayRef[CodeCommit_ConflictMetadata]

A list of metadata for any conflicting files. If the specified merge
strategy is FAST_FORWARD_MERGE, this list will always be empty.


=head2 B<REQUIRED> DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 B<REQUIRED> Mergeable => Bool

A Boolean value that indicates whether the code is mergeable by the
specified merge option.


=head2 NextToken => Str

An enumeration token that can be used in a request to return the next
batch of the results.


=head2 B<REQUIRED> SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;