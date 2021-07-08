
package Paws::CodeBuild::DescribeCodeCoveragesOutput;
  use Moose;
  has CodeCoverages => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::CodeCoverage]', traits => ['NameInRequest'], request_name => 'codeCoverages' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::DescribeCodeCoveragesOutput

=head1 ATTRIBUTES


=head2 CodeCoverages => ArrayRef[L<Paws::CodeBuild::CodeCoverage>]

An array of C<CodeCoverage> objects that contain the results.


=head2 NextToken => Str

If there are more items to return, this contains a token that is passed
to a subsequent call to C<DescribeCodeCoverages> to retrieve the next
set of items.


=head2 _request_id => Str


=cut

1;