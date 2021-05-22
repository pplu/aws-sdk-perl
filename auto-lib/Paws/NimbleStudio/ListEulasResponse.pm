
package Paws::NimbleStudio::ListEulasResponse;
  use Moose;
  has Eulas => (is => 'ro', isa => 'ArrayRef[Paws::NimbleStudio::Eula]', traits => ['NameInRequest'], request_name => 'eulas');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListEulasResponse

=head1 ATTRIBUTES


=head2 Eulas => ArrayRef[L<Paws::NimbleStudio::Eula>]

A collection of EULA resources.


=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.


=head2 _request_id => Str


=cut

