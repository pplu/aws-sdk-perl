
package Paws::CloudSearch::DefineSuggesterResponse;
  use Moose;
  has Suggester => (is => 'ro', isa => 'Paws::CloudSearch::SuggesterStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineSuggesterResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Suggester => L<Paws::CloudSearch::SuggesterStatus>




=head2 _request_id => Str


=cut

