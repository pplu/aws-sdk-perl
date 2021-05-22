
package Paws::CodeBuild::BatchGetBuildBatchesOutput;
  use Moose;
  has BuildBatches => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::BuildBatch]', traits => ['NameInRequest'], request_name => 'buildBatches' );
  has BuildBatchesNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'buildBatchesNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetBuildBatchesOutput

=head1 ATTRIBUTES


=head2 BuildBatches => ArrayRef[L<Paws::CodeBuild::BuildBatch>]

An array of C<BuildBatch> objects that represent the retrieved batch
builds.


=head2 BuildBatchesNotFound => ArrayRef[Str|Undef]

An array that contains the identifiers of any batch builds that are not
found.


=head2 _request_id => Str


=cut

1;