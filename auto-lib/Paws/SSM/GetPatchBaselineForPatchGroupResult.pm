
package Paws::SSM::GetPatchBaselineForPatchGroupResult;
  use Moose;
  has BaselineId => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has PatchGroup => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetPatchBaselineForPatchGroupResult

=head1 ATTRIBUTES


=head2 BaselineId => Str

The ID of the patch baseline that should be used for the patch group.


=head2 OperatingSystem => Str

The operating system rule specified for patch groups using the patch
baseline.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"AMAZON_LINUX_2">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">, C<"SUSE">, C<"CENTOS">
=head2 PatchGroup => Str

The name of the patch group.


=head2 _request_id => Str


=cut

1;