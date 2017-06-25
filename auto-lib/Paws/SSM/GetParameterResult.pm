
package Paws::SSM::GetParameterResult;
  use Moose;
  has Parameter => (is => 'ro', isa => 'Paws::SSM::Parameter');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParameterResult

=head1 ATTRIBUTES


=head2 Parameter => L<Paws::SSM::Parameter>

Information about a parameter.


=head2 _request_id => Str


=cut

1;