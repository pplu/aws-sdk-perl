
package Paws::PinpointEmail::GetDeliverabilityTestReportResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_IspPlacement PinpointEmail_PlacementStatistics PinpointEmail_Tag PinpointEmail_DeliverabilityTestReport/;
  has DeliverabilityTestReport => (is => 'ro', isa => PinpointEmail_DeliverabilityTestReport, required => 1);
  has IspPlacements => (is => 'ro', isa => ArrayRef[PinpointEmail_IspPlacement], required => 1);
  has Message => (is => 'ro', isa => Str);
  has OverallPlacement => (is => 'ro', isa => PinpointEmail_PlacementStatistics, required => 1);
  has Tags => (is => 'ro', isa => ArrayRef[PinpointEmail_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'IspPlacements' => 1,
                    'DeliverabilityTestReport' => 1,
                    'OverallPlacement' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[PinpointEmail_Tag]',
                           'class' => 'Paws::PinpointEmail::Tag'
                         },
               'Message' => {
                              'type' => 'Str'
                            },
               'DeliverabilityTestReport' => {
                                               'class' => 'Paws::PinpointEmail::DeliverabilityTestReport',
                                               'type' => 'PinpointEmail_DeliverabilityTestReport'
                                             },
               'IspPlacements' => {
                                    'class' => 'Paws::PinpointEmail::IspPlacement',
                                    'type' => 'ArrayRef[PinpointEmail_IspPlacement]'
                                  },
               'OverallPlacement' => {
                                       'type' => 'PinpointEmail_PlacementStatistics',
                                       'class' => 'Paws::PinpointEmail::PlacementStatistics'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetDeliverabilityTestReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliverabilityTestReport => PinpointEmail_DeliverabilityTestReport

An object that contains the results of the predictive inbox placement
test.


=head2 B<REQUIRED> IspPlacements => ArrayRef[PinpointEmail_IspPlacement]

An object that describes how the test email was handled by several
email providers, including Gmail, Hotmail, Yahoo, AOL, and others.


=head2 Message => Str

An object that contains the message that you sent when you performed
this predictive inbox placement test.


=head2 B<REQUIRED> OverallPlacement => PinpointEmail_PlacementStatistics

An object that specifies how many test messages that were sent during
the predictive inbox placement test were delivered to recipients'
inboxes, how many were sent to recipients' spam folders, and how many
weren't delivered.


=head2 Tags => ArrayRef[PinpointEmail_Tag]

An array of objects that define the tags (keys and values) that are
associated with the predictive inbox placement test.


=head2 _request_id => Str


=cut

