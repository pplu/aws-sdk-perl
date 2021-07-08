
package Paws::NimbleStudio::ListStudiosResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Studios => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::Studio]', traits => ['NameInRequest'], request_name => 'studios');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListStudiosResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 Studios => ArrayRef[L<Paws::NimbleStudio::Studio>]

A collection of studios.


=head2 _request_id => Str


=cut

