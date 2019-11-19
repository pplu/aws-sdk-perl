# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetMergeCommitOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has BaseCommitId => (is => 'ro', isa => Str);
  has DestinationCommitId => (is => 'ro', isa => Str);
  has MergedCommitId => (is => 'ro', isa => Str);
  has SourceCommitId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceCommitId' => {
                                     'type' => 'Str'
                                   },
               'MergedCommitId' => {
                                     'type' => 'Str'
                                   },
               'DestinationCommitId' => {
                                          'type' => 'Str'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BaseCommitId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'DestinationCommitId' => 'destinationCommitId',
                       'BaseCommitId' => 'baseCommitId',
                       'MergedCommitId' => 'mergedCommitId',
                       'SourceCommitId' => 'sourceCommitId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetMergeCommitOutput

=head1 ATTRIBUTES


=head2 BaseCommitId => Str

The commit ID of the merge base.


=head2 DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 MergedCommitId => Str

The commit ID for the merge commit created when the source branch was
merged into the destination branch. If the fast-forward merge strategy
was used, no merge commit exists.


=head2 SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;