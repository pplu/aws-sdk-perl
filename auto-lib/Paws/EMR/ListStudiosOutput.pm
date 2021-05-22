
package Paws::EMR::ListStudiosOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Studios => (is => 'ro', isa => 'ArrayRef[Paws::EMR::StudioSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListStudiosOutput

=head1 ATTRIBUTES


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 Studios => ArrayRef[L<Paws::EMR::StudioSummary>]

The list of Studio summary objects.


=head2 _request_id => Str


=cut

1;