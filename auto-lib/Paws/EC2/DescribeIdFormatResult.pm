
package Paws::EC2::DescribeIdFormatResult;
  use Moose;
  has Statuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IdFormat]', xmlname => 'statusSet', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIdFormatResult

=head1 ATTRIBUTES


=head2 Statuses => ArrayRef[L<Paws::EC2::IdFormat>]

Information about the ID format for the resource.




=cut

