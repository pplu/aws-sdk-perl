
package Paws::CloudSearch::DefineIndexFieldResponse;
  use Moose;
  has IndexField => (is => 'ro', isa => 'Paws::CloudSearch::IndexFieldStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineIndexFieldResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexField => L<Paws::CloudSearch::IndexFieldStatus>




=head2 _request_id => Str


=cut

