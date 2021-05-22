
package Paws::Finspace::UpdateEnvironmentResponse;
  use Moose;
  has Environment => (is => 'ro', isa => 'Paws::Finspace::Environment', traits => ['NameInRequest'], request_name => 'environment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateEnvironmentResponse

=head1 ATTRIBUTES


=head2 Environment => L<Paws::Finspace::Environment>

Returns the FinSpace environment object.


=head2 _request_id => Str


=cut

