
package Paws::SESv2::GetDeliverabilityTestReportResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_DeliverabilityTestReport SESv2_IspPlacement SESv2_PlacementStatistics SESv2_Tag/;
  has DeliverabilityTestReport => (is => 'ro', isa => SESv2_DeliverabilityTestReport, required => 1);
  has IspPlacements => (is => 'ro', isa => ArrayRef[SESv2_IspPlacement], required => 1);
  has Message => (is => 'ro', isa => Str);
  has OverallPlacement => (is => 'ro', isa => SESv2_PlacementStatistics, required => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SESv2_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'OverallPlacement' => 1,
                    'DeliverabilityTestReport' => 1,
                    'IspPlacements' => 1
                  },
  'types' => {
               'Message' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[SESv2_Tag]',
                           'class' => 'Paws::SESv2::Tag'
                         },
               'OverallPlacement' => {
                                       'type' => 'SESv2_PlacementStatistics',
                                       'class' => 'Paws::SESv2::PlacementStatistics'
                                     },
               'DeliverabilityTestReport' => {
                                               'type' => 'SESv2_DeliverabilityTestReport',
                                               'class' => 'Paws::SESv2::DeliverabilityTestReport'
                                             },
               'IspPlacements' => {
                                    'type' => 'ArrayRef[SESv2_IspPlacement]',
                                    'class' => 'Paws::SESv2::IspPlacement'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDeliverabilityTestReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliverabilityTestReport => SESv2_DeliverabilityTestReport

An object that contains the results of the predictive inbox placement
test.


=head2 B<REQUIRED> IspPlacements => ArrayRef[SESv2_IspPlacement]

An object that describes how the test email was handled by several
email providers, including Gmail, Hotmail, Yahoo, AOL, and others.


=head2 Message => Str

An object that contains the message that you sent when you performed
this predictive inbox placement test.


=head2 B<REQUIRED> OverallPlacement => SESv2_PlacementStatistics

An object that specifies how many test messages that were sent during
the predictive inbox placement test were delivered to recipients'
inboxes, how many were sent to recipients' spam folders, and how many
weren't delivered.


=head2 Tags => ArrayRef[SESv2_Tag]

An array of objects that define the tags (keys and values) that are
associated with the predictive inbox placement test.


=head2 _request_id => Str


=cut

