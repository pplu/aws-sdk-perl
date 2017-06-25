
package Paws::DAX::UpdateParameterGroupResponse;
  use Moose;
  has ParameterGroup => (is => 'ro', isa => 'Paws::DAX::ParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::UpdateParameterGroupResponse

=head1 ATTRIBUTES


=head2 ParameterGroup => L<Paws::DAX::ParameterGroup>

The parameter group that has been modified.


=head2 _request_id => Str


=cut

1;