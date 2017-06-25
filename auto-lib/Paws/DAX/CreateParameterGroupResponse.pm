
package Paws::DAX::CreateParameterGroupResponse;
  use Moose;
  has ParameterGroup => (is => 'ro', isa => 'Paws::DAX::ParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::CreateParameterGroupResponse

=head1 ATTRIBUTES


=head2 ParameterGroup => L<Paws::DAX::ParameterGroup>

Represents the output of a I<CreateParameterGroup> action.


=head2 _request_id => Str


=cut

1;