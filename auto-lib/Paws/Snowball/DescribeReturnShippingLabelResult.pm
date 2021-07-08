
package Paws::Snowball::DescribeReturnShippingLabelResult;
  use Moose;
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeReturnShippingLabelResult

=head1 ATTRIBUTES


=head2 ExpirationDate => Str

The expiration date of the current return shipping label.


=head2 Status => Str

The status information of the task on a Snow device that is being
returned to AWS.

Valid values are: C<"InProgress">, C<"TimedOut">, C<"Succeeded">, C<"Failed">
=head2 _request_id => Str


=cut

1;