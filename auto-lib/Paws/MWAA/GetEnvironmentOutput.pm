
package Paws::MWAA::GetEnvironmentOutput;
  use Moose;
  has Environment => (is => 'ro', isa => 'Paws::MWAA::Environment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::GetEnvironmentOutput

=head1 ATTRIBUTES


=head2 Environment => L<Paws::MWAA::Environment>

A JSON blob with environment details.


=head2 _request_id => Str


=cut

