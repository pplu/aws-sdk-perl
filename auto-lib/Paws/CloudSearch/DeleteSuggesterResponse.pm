
package Paws::CloudSearch::DeleteSuggesterResponse;
  use Moose;
  has Suggester => (is => 'ro', isa => 'Paws::CloudSearch::SuggesterStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DeleteSuggesterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Suggester => L<Paws::CloudSearch::SuggesterStatus>

The status of the suggester being deleted.


=head2 _request_id => Str


=cut

