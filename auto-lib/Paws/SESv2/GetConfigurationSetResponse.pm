
package Paws::SESv2::GetConfigurationSetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_Tag SESv2_TrackingOptions SESv2_SendingOptions SESv2_ReputationOptions SESv2_DeliveryOptions/;
  has ConfigurationSetName => (is => 'ro', isa => Str);
  has DeliveryOptions => (is => 'ro', isa => SESv2_DeliveryOptions);
  has ReputationOptions => (is => 'ro', isa => SESv2_ReputationOptions);
  has SendingOptions => (is => 'ro', isa => SESv2_SendingOptions);
  has Tags => (is => 'ro', isa => ArrayRef[SESv2_Tag]);
  has TrackingOptions => (is => 'ro', isa => SESv2_TrackingOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrackingOptions' => {
                                      'class' => 'Paws::SESv2::TrackingOptions',
                                      'type' => 'SESv2_TrackingOptions'
                                    },
               'ConfigurationSetName' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'class' => 'Paws::SESv2::Tag',
                           'type' => 'ArrayRef[SESv2_Tag]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeliveryOptions' => {
                                      'class' => 'Paws::SESv2::DeliveryOptions',
                                      'type' => 'SESv2_DeliveryOptions'
                                    },
               'ReputationOptions' => {
                                        'class' => 'Paws::SESv2::ReputationOptions',
                                        'type' => 'SESv2_ReputationOptions'
                                      },
               'SendingOptions' => {
                                     'class' => 'Paws::SESv2::SendingOptions',
                                     'type' => 'SESv2_SendingOptions'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetConfigurationSetResponse

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set.


=head2 DeliveryOptions => SESv2_DeliveryOptions

An object that defines the dedicated IP pool that is used to send
emails that you send using the configuration set.


=head2 ReputationOptions => SESv2_ReputationOptions

An object that defines whether or not Amazon SES collects reputation
metrics for the emails that you send that use the configuration set.


=head2 SendingOptions => SESv2_SendingOptions

An object that defines whether or not Amazon SES can send email that
you send using the configuration set.


=head2 Tags => ArrayRef[SESv2_Tag]

An array of objects that define the tags (keys and values) that are
associated with the configuration set.


=head2 TrackingOptions => SESv2_TrackingOptions

An object that defines the open and click tracking options for emails
that you send using the configuration set.


=head2 _request_id => Str


=cut

