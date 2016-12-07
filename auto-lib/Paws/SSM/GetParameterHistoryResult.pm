
package Paws::SSM::GetParameterHistoryResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ParameterHistory]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParameterHistoryResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Parameters => ArrayRef[L<Paws::SSM::ParameterHistory>]

A list of parameters returned by the request.


=head2 _request_id => Str


=cut

1;