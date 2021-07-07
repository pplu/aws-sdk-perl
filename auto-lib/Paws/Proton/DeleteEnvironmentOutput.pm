
package Paws::Proton::DeleteEnvironmentOutput;
  use Moose;
  has Environment => (is => 'ro', isa => 'Paws::Proton::Environment', traits => ['NameInRequest'], request_name => 'environment' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::DeleteEnvironmentOutput

=head1 ATTRIBUTES


=head2 Environment => L<Paws::Proton::Environment>

The environment detail data that's returned by AWS Proton.


=head2 _request_id => Str


=cut

1;