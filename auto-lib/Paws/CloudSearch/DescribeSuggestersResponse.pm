
package Paws::CloudSearch::DescribeSuggestersResponse;
  use Moose;
  has Suggesters => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearch::SuggesterStatus]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeSuggestersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Suggesters => ArrayRef[L<Paws::CloudSearch::SuggesterStatus>]

The suggesters configured for the domain specified in the request.


=head2 _request_id => Str


=cut

