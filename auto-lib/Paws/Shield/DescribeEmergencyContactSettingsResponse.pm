
package Paws::Shield::DescribeEmergencyContactSettingsResponse;
  use Moose;
  has EmergencyContactList => (is => 'ro', isa => 'ArrayRef[Paws::Shield::EmergencyContact]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeEmergencyContactSettingsResponse

=head1 ATTRIBUTES


=head2 EmergencyContactList => ArrayRef[L<Paws::Shield::EmergencyContact>]

A list of email addresses that the DRT can use to contact you during a
suspected attack.


=head2 _request_id => Str


=cut

1;