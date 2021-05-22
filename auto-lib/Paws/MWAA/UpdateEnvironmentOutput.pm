
package Paws::MWAA::UpdateEnvironmentOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::UpdateEnvironmentOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN to update of your Amazon MWAA environment.


=head2 _request_id => Str


=cut

