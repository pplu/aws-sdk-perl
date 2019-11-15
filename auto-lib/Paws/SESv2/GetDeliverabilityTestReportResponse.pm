
package Paws::SESv2::GetDeliverabilityTestReportResponse;
  use Moose;
  has DeliverabilityTestReport => (is => 'ro', isa => 'Paws::SESv2::DeliverabilityTestReport', required => 1);
  has IspPlacements => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::IspPlacement]', required => 1);
  has Message => (is => 'ro', isa => 'Str');
  has OverallPlacement => (is => 'ro', isa => 'Paws::SESv2::PlacementStatistics', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDeliverabilityTestReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliverabilityTestReport => L<Paws::SESv2::DeliverabilityTestReport>

An object that contains the results of the predictive inbox placement
test.


=head2 B<REQUIRED> IspPlacements => ArrayRef[L<Paws::SESv2::IspPlacement>]

An object that describes how the test email was handled by several
email providers, including Gmail, Hotmail, Yahoo, AOL, and others.


=head2 Message => Str

An object that contains the message that you sent when you performed
this predictive inbox placement test.


=head2 B<REQUIRED> OverallPlacement => L<Paws::SESv2::PlacementStatistics>

An object that specifies how many test messages that were sent during
the predictive inbox placement test were delivered to recipients'
inboxes, how many were sent to recipients' spam folders, and how many
weren't delivered.


=head2 Tags => ArrayRef[L<Paws::SESv2::Tag>]

An array of objects that define the tags (keys and values) that are
associated with the predictive inbox placement test.


=head2 _request_id => Str


=cut

