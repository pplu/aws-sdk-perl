
package Paws::CodeCommit::GetMergeOptionsOutput;
  use Moose;
  has BaseCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'baseCommitId' , required => 1);
  has DestinationCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCommitId' , required => 1);
  has MergeOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'mergeOptions' , required => 1);
  has SourceCommitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceCommitId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

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