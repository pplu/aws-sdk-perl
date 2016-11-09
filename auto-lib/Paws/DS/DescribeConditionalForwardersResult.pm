
package Paws::DS::DescribeConditionalForwardersResult;
  use Moose;
  has ConditionalForwarders => (is => 'ro', isa => 'ArrayRef[Paws::DS::ConditionalForwarder]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeConditionalForwardersResult

=head1 ATTRIBUTES


=head2 ConditionalForwarders => ArrayRef[L<Paws::DS::ConditionalForwarder>]

The list of conditional forwarders that have been created.


=head2 _request_id => Str


=cut

1;