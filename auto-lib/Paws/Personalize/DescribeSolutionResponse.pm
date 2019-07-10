
package Paws::Personalize::DescribeSolutionResponse;
  use Moose;
  has Solution => (is => 'ro', isa => 'Paws::Personalize::Solution', traits => ['NameInRequest'], request_name => 'solution' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeSolutionResponse

=head1 ATTRIBUTES


=head2 Solution => L<Paws::Personalize::Solution>

An object that describes the solution.


=head2 _request_id => Str


=cut

1;