# Generated from default/object.tt
package Paws::IoTAnalytics::PipelineActivity;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_SelectAttributesActivity IoTAnalytics_ChannelActivity IoTAnalytics_DatastoreActivity IoTAnalytics_MathActivity IoTAnalytics_AddAttributesActivity IoTAnalytics_LambdaActivity IoTAnalytics_DeviceRegistryEnrichActivity IoTAnalytics_FilterActivity IoTAnalytics_RemoveAttributesActivity IoTAnalytics_DeviceShadowEnrichActivity/;
  has AddAttributes => (is => 'ro', isa => IoTAnalytics_AddAttributesActivity);
  has Channel => (is => 'ro', isa => IoTAnalytics_ChannelActivity);
  has Datastore => (is => 'ro', isa => IoTAnalytics_DatastoreActivity);
  has DeviceRegistryEnrich => (is => 'ro', isa => IoTAnalytics_DeviceRegistryEnrichActivity);
  has DeviceShadowEnrich => (is => 'ro', isa => IoTAnalytics_DeviceShadowEnrichActivity);
  has Filter => (is => 'ro', isa => IoTAnalytics_FilterActivity);
  has Lambda => (is => 'ro', isa => IoTAnalytics_LambdaActivity);
  has Math => (is => 'ro', isa => IoTAnalytics_MathActivity);
  has RemoveAttributes => (is => 'ro', isa => IoTAnalytics_RemoveAttributesActivity);
  has SelectAttributes => (is => 'ro', isa => IoTAnalytics_SelectAttributesActivity);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Datastore' => {
                                'class' => 'Paws::IoTAnalytics::DatastoreActivity',
                                'type' => 'IoTAnalytics_DatastoreActivity'
                              },
               'Channel' => {
                              'class' => 'Paws::IoTAnalytics::ChannelActivity',
                              'type' => 'IoTAnalytics_ChannelActivity'
                            },
               'AddAttributes' => {
                                    'class' => 'Paws::IoTAnalytics::AddAttributesActivity',
                                    'type' => 'IoTAnalytics_AddAttributesActivity'
                                  },
               'DeviceRegistryEnrich' => {
                                           'class' => 'Paws::IoTAnalytics::DeviceRegistryEnrichActivity',
                                           'type' => 'IoTAnalytics_DeviceRegistryEnrichActivity'
                                         },
               'Filter' => {
                             'class' => 'Paws::IoTAnalytics::FilterActivity',
                             'type' => 'IoTAnalytics_FilterActivity'
                           },
               'Math' => {
                           'class' => 'Paws::IoTAnalytics::MathActivity',
                           'type' => 'IoTAnalytics_MathActivity'
                         },
               'RemoveAttributes' => {
                                       'class' => 'Paws::IoTAnalytics::RemoveAttributesActivity',
                                       'type' => 'IoTAnalytics_RemoveAttributesActivity'
                                     },
               'DeviceShadowEnrich' => {
                                         'class' => 'Paws::IoTAnalytics::DeviceShadowEnrichActivity',
                                         'type' => 'IoTAnalytics_DeviceShadowEnrichActivity'
                                       },
               'Lambda' => {
                             'class' => 'Paws::IoTAnalytics::LambdaActivity',
                             'type' => 'IoTAnalytics_LambdaActivity'
                           },
               'SelectAttributes' => {
                                       'class' => 'Paws::IoTAnalytics::SelectAttributesActivity',
                                       'type' => 'IoTAnalytics_SelectAttributesActivity'
                                     }
             },
  'NameInRequest' => {
                       'Datastore' => 'datastore',
                       'Channel' => 'channel',
                       'AddAttributes' => 'addAttributes',
                       'DeviceRegistryEnrich' => 'deviceRegistryEnrich',
                       'Filter' => 'filter',
                       'Math' => 'math',
                       'RemoveAttributes' => 'removeAttributes',
                       'DeviceShadowEnrich' => 'deviceShadowEnrich',
                       'Lambda' => 'lambda',
                       'SelectAttributes' => 'selectAttributes'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::PipelineActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::PipelineActivity object:

  $service_obj->Method(Att1 => { AddAttributes => $value, ..., SelectAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::PipelineActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->AddAttributes

=head1 DESCRIPTION

An activity that performs a transformation on a message.

=head1 ATTRIBUTES


=head2 AddAttributes => IoTAnalytics_AddAttributesActivity

  Adds other attributes based on existing attributes in the message.


=head2 Channel => IoTAnalytics_ChannelActivity

  Determines the source of the messages to be processed.


=head2 Datastore => IoTAnalytics_DatastoreActivity

  Specifies where to store the processed message data.


=head2 DeviceRegistryEnrich => IoTAnalytics_DeviceRegistryEnrichActivity

  Adds data from the AWS IoT device registry to your message.


=head2 DeviceShadowEnrich => IoTAnalytics_DeviceShadowEnrichActivity

  Adds information from the AWS IoT Device Shadows service to a message.


=head2 Filter => IoTAnalytics_FilterActivity

  Filters a message based on its attributes.


=head2 Lambda => IoTAnalytics_LambdaActivity

  Runs a Lambda function to modify the message.


=head2 Math => IoTAnalytics_MathActivity

  Computes an arithmetic expression using the message's attributes and
adds it to the message.


=head2 RemoveAttributes => IoTAnalytics_RemoveAttributesActivity

  Removes attributes from a message.


=head2 SelectAttributes => IoTAnalytics_SelectAttributesActivity

  Creates a new message using only the specified attributes from the
original message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

