
package Paws::EC2::DescribeIdentityIdFormatResult;
  use Moose;
  has Statuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IdFormat]', xmlname => 'statusSet', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeIdentityIdFormatResult

=head1 ATTRIBUTES


=head2 Statuses => ArrayRef[L<Paws::EC2::IdFormat>]

Information about the ID format for the resources.




=cut

