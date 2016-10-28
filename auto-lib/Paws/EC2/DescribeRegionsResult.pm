
package Paws::EC2::DescribeRegionsResult;
  use Moose;
  has Regions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Region]', xmlname => 'regionInfo', traits => ['Unwrapped',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeRegionsResult

=head1 ATTRIBUTES


=head2 Regions => ArrayRef[L<Paws::EC2::Region>]

Information about one or more regions.




=cut

