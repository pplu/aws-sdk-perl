
package Paws::DS::DescribeConditionalForwardersResult;
  use Moose;
  has ConditionalForwarders => (is => 'ro', isa => 'ArrayRef[Paws::DS::ConditionalForwarder]');


### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeConditionalForwardersResult

=head1 ATTRIBUTES


=head2 ConditionalForwarders => ArrayRef[L<Paws::DS::ConditionalForwarder>]

The list of conditional forwarders that have been created.




=cut

1;