
package Paws::SSM::GetParametersByPathResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Parameter]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParametersByPathResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 Parameters => ArrayRef[L<Paws::SSM::Parameter>]

A list of parameters found in the specified hierarchy.


=head2 _request_id => Str


=cut

1;