# Generated from callresult_class.tt

package Paws::SES::DescribeConfigurationSetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_EventDestination SES_TrackingOptions SES_DeliveryOptions SES_ConfigurationSet SES_ReputationOptions/;
  has ConfigurationSet => (is => 'ro', isa => SES_ConfigurationSet);
  has DeliveryOptions => (is => 'ro', isa => SES_DeliveryOptions);
  has EventDestinations => (is => 'ro', isa => ArrayRef[SES_EventDestination]);
  has ReputationOptions => (is => 'ro', isa => SES_ReputationOptions);
  has TrackingOptions => (is => 'ro', isa => SES_TrackingOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrackingOptions' => {
                                      'type' => 'SES_TrackingOptions',
                                      'class' => 'Paws::SES::TrackingOptions'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReputationOptions' => {
                                        'type' => 'SES_ReputationOptions',
                                        'class' => 'Paws::SES::ReputationOptions'
                                      },
               'EventDestinations' => {
                                        'type' => 'ArrayRef[SES_EventDestination]',
                                        'class' => 'Paws::SES::EventDestination'
                                      },
               'ConfigurationSet' => {
                                       'class' => 'Paws::SES::ConfigurationSet',
                                       'type' => 'SES_ConfigurationSet'
                                     },
               'DeliveryOptions' => {
                                      'class' => 'Paws::SES::DeliveryOptions',
                                      'type' => 'SES_DeliveryOptions'
                                    }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeConfigurationSetResponse

=head1 ATTRIBUTES


=head2 ConfigurationSet => SES_ConfigurationSet

The configuration set object associated with the specified
configuration set.


=head2 DeliveryOptions => SES_DeliveryOptions




=head2 EventDestinations => ArrayRef[SES_EventDestination]

A list of event destinations associated with the configuration set.


=head2 ReputationOptions => SES_ReputationOptions

An object that represents the reputation settings for the configuration
set.


=head2 TrackingOptions => SES_TrackingOptions

The name of the custom open and click tracking domain associated with
the configuration set.


=head2 _request_id => Str


=cut

