
package Paws::Quicksight::DescribeAnalysisResponse;
  use Moose;
  has Analysis => (is => 'ro', isa => 'Paws::Quicksight::Analysis');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeAnalysisResponse

=head1 ATTRIBUTES


=head2 Analysis => L<Paws::Quicksight::Analysis>

A metadata structure that contains summary information for the analysis
that you're describing.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

