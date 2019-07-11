
package Paws::Personalize::DescribeSolutionVersionResponse;
  use Moose;
  has SolutionVersion => (is => 'ro', isa => 'Paws::Personalize::SolutionVersion', traits => ['NameInRequest'], request_name => 'solutionVersion' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeSolutionVersionResponse

=head1 ATTRIBUTES


=head2 SolutionVersion => L<Paws::Personalize::SolutionVersion>

The solution version.


=head2 _request_id => Str


=cut

1;