# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetMergeOptionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeCommit::Types qw//;
  has BaseCommitId => (is => 'ro', isa => Str, required => 1);
  has DestinationCommitId => (is => 'ro', isa => Str, required => 1);
  has MergeOptions => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has SourceCommitId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceCommitId' => {
                                     'type' => 'Str'
                                   },
               'MergeOptions' => {
                                   'type' => 'ArrayRef[Str|Undef]'
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
  'IsRequired' => {
                    'BaseCommitId' => 1,
                    'DestinationCommitId' => 1,
                    'MergeOptions' => 1,
                    'SourceCommitId' => 1
                  },
  'NameInRequest' => {
                       'BaseCommitId' => 'baseCommitId',
                       'DestinationCommitId' => 'destinationCommitId',
                       'MergeOptions' => 'mergeOptions',
                       'SourceCommitId' => 'sourceCommitId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetMergeOptionsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseCommitId => Str

The commit ID of the merge base.


=head2 B<REQUIRED> DestinationCommitId => Str

The commit ID of the destination commit specifier that was used in the
merge evaluation.


=head2 B<REQUIRED> MergeOptions => ArrayRef[Str|Undef]

The merge option or strategy used to merge the code.


=head2 B<REQUIRED> SourceCommitId => Str

The commit ID of the source commit specifier that was used in the merge
evaluation.


=head2 _request_id => Str


=cut

1;