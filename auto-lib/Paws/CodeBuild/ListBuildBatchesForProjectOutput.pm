
package Paws::CodeBuild::ListBuildBatchesForProjectOutput;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListBuildBatchesForProjectOutput

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

An array of strings that contains the batch build identifiers.


=head2 NextToken => Str

If there are more items to return, this contains a token that is passed
to a subsequent call to C<ListBuildBatchesForProject> to retrieve the
next set of items.


=head2 _request_id => Str


=cut

1;