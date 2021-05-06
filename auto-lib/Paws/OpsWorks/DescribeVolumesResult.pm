
package Paws::OpsWorks::DescribeVolumesResult;
  use Moose;
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::Volume]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeVolumesResult

=head1 ATTRIBUTES


=head2 Volumes => ArrayRef[L<Paws::OpsWorks::Volume>]

An array of volume IDs.


=head2 _request_id => Str


=cut

1;