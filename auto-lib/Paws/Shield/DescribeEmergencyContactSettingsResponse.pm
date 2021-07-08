
package Paws::Shield::DescribeEmergencyContactSettingsResponse;
  use Moose;
  has EmergencyContactList => (is => 'ro', isa => 'ArrayRef[Paws::Shield::EmergencyContact]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeEmergencyContactSettingsResponse

=head1 ATTRIBUTES


=head2 EmergencyContactList => ArrayRef[L<Paws::Shield::EmergencyContact>]

A list of email addresses and phone numbers that the DDoS Response Team
(DRT) can use to contact you if you have proactive engagement enabled,
for escalations to the DRT and to initiate proactive customer support.


=head2 _request_id => Str


=cut

1;