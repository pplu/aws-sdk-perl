
package Paws::CloudSearch::DefineExpressionResponse;
  use Moose;
  has Expression => (is => 'ro', isa => 'Paws::CloudSearch::ExpressionStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineExpressionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Expression => L<Paws::CloudSearch::ExpressionStatus>




=head2 _request_id => Str


=cut

