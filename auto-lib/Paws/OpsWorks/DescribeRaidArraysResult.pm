
package Paws::OpsWorks::DescribeRaidArraysResult;
  use Moose;
  has RaidArrays => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::RaidArray]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeRaidArraysResult

=head1 ATTRIBUTES


=head2 RaidArrays => ArrayRef[L<Paws::OpsWorks::RaidArray>]

A C<RaidArrays> object that describes the specified RAID arrays.


=head2 _request_id => Str


=cut

1;