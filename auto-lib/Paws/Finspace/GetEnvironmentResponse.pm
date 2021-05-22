
package Paws::Finspace::GetEnvironmentResponse;
  use Moose;
  has Environment => (is => 'ro', isa => 'Paws::Finspace::Environment', traits => ['NameInRequest'], request_name => 'environment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetEnvironmentResponse

=head1 ATTRIBUTES


=head2 Environment => L<Paws::Finspace::Environment>

The name of the FinSpace environment.


=head2 _request_id => Str


=cut

