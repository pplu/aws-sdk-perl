
package Paws::CloudSearch::DescribeExpressionsResponse;
  use Moose;
  has Expressions => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::ExpressionStatus]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeExpressionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Expressions => ArrayRef[L<Paws::CloudSearch::ExpressionStatus>]

The expressions configured for the domain.


=head2 _request_id => Str


=cut

