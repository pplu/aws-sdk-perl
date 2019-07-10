
package Paws::Personalize::CreateSolutionVersionResponse;
  use Moose;
  has SolutionVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionVersionArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateSolutionVersionResponse

=head1 ATTRIBUTES


=head2 SolutionVersionArn => Str

The ARN of the new solution version.


=head2 _request_id => Str


=cut

1;