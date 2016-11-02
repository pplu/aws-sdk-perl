
package Paws::SSM::DescribeActivationsResult;
  use Moose;
  has ActivationList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Activation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeActivationsResult

=head1 ATTRIBUTES


=head2 ActivationList => ArrayRef[L<Paws::SSM::Activation>]

A list of activations for your AWS account.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;