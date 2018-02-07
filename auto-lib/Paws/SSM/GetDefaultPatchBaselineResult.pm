
package Paws::SSM::GetDefaultPatchBaselineResult;
  use Moose;
  has BaselineId => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDefaultPatchBaselineResult

=head1 ATTRIBUTES


=head2 BaselineId => Str

The ID of the default patch baseline.


=head2 OperatingSystem => Str

The operating system for the returned patch baseline.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">, C<"SUSE">
=head2 _request_id => Str


=cut

1;