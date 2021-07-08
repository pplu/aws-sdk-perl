
package Paws::CodeBuild::StartBuildBatchOutput;
  use Moose;
  has BuildBatch => (is => 'ro', isa => 'Paws::CodeBuild::BuildBatch', traits => ['NameInRequest'], request_name => 'buildBatch' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartBuildBatchOutput

=head1 ATTRIBUTES


=head2 BuildBatch => L<Paws::CodeBuild::BuildBatch>

A C<BuildBatch> object that contains information about the batch build.


=head2 _request_id => Str


=cut

1;