
package Paws::Personalize::CreateSolutionResponse;
  use Moose;
  has SolutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateSolutionResponse

=head1 ATTRIBUTES


=head2 SolutionArn => Str

The ARN of the solution.


=head2 _request_id => Str


=cut

1;