
package Paws::MWAA::CreateEnvironmentOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::CreateEnvironmentOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The resulting Amazon MWAA envirnonment ARN.


=head2 _request_id => Str


=cut

