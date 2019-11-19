
package Paws::PinpointEmail::GetConfigurationSetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_DeliveryOptions PinpointEmail_TrackingOptions PinpointEmail_SendingOptions PinpointEmail_ReputationOptions PinpointEmail_Tag/;
  has ConfigurationSetName => (is => 'ro', isa => Str);
  has DeliveryOptions => (is => 'ro', isa => PinpointEmail_DeliveryOptions);
  has ReputationOptions => (is => 'ro', isa => PinpointEmail_ReputationOptions);
  has SendingOptions => (is => 'ro', isa => PinpointEmail_SendingOptions);
  has Tags => (is => 'ro', isa => ArrayRef[PinpointEmail_Tag]);
  has TrackingOptions => (is => 'ro', isa => PinpointEmail_TrackingOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeliveryOptions' => {
                                      'type' => 'PinpointEmail_DeliveryOptions',
                                      'class' => 'Paws::PinpointEmail::DeliveryOptions'
                                    },
               'ReputationOptions' => {
                                        'class' => 'Paws::PinpointEmail::ReputationOptions',
                                        'type' => 'PinpointEmail_ReputationOptions'
                                      },
               'SendingOptions' => {
                                     'class' => 'Paws::PinpointEmail::SendingOptions',
                                     'type' => 'PinpointEmail_SendingOptions'
                                   },
               'TrackingOptions' => {
                                      'type' => 'PinpointEmail_TrackingOptions',
                                      'class' => 'Paws::PinpointEmail::TrackingOptions'
                                    },
               'ConfigurationSetName' => {
                                           'type' => 'Str'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[PinpointEmail_Tag]',
                           'class' => 'Paws::PinpointEmail::Tag'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetConfigurationSetResponse

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set.


=head2 DeliveryOptions => PinpointEmail_DeliveryOptions

An object that defines the dedicated IP pool that is used to send
emails that you send using the configuration set.


=head2 ReputationOptions => PinpointEmail_ReputationOptions

An object that defines whether or not Amazon Pinpoint collects
reputation metrics for the emails that you send that use the
configuration set.


=head2 SendingOptions => PinpointEmail_SendingOptions

An object that defines whether or not Amazon Pinpoint can send email
that you send using the configuration set.


=head2 Tags => ArrayRef[PinpointEmail_Tag]

An array of objects that define the tags (keys and values) that are
associated with the configuration set.


=head2 TrackingOptions => PinpointEmail_TrackingOptions

An object that defines the open and click tracking options for emails
that you send using the configuration set.


=head2 _request_id => Str


=cut

