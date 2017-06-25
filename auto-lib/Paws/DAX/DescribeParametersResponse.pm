
package Paws::DAX::DescribeParametersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::DAX::Parameter]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DescribeParametersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 Parameters => ArrayRef[L<Paws::DAX::Parameter>]

A list of parameters within a parameter group. Each element in the list
represents one parameter.


=head2 _request_id => Str


=cut

1;