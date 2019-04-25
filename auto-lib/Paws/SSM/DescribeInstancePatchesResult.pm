
package Paws::SSM::DescribeInstancePatchesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Patches => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchComplianceData]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstancePatchesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Patches => ArrayRef[L<Paws::SSM::PatchComplianceData>]

Each entry in the array is a structure containing:

Title (string)

KBId (string)

Classification (string)

Severity (string)

State (string, such as "INSTALLED" or "FAILED")

InstalledTime (DateTime)

InstalledBy (string)


=head2 _request_id => Str


=cut

1;