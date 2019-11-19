# Generated from default/object.tt
package Paws::IoTAnalytics::DatasetContentDeliveryDestination;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_IotEventsDestinationConfiguration IoTAnalytics_S3DestinationConfiguration/;
  has IotEventsDestinationConfiguration => (is => 'ro', isa => IoTAnalytics_IotEventsDestinationConfiguration);
  has S3DestinationConfiguration => (is => 'ro', isa => IoTAnalytics_S3DestinationConfiguration);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'IotEventsDestinationConfiguration' => 'iotEventsDestinationConfiguration',
                       'S3DestinationConfiguration' => 's3DestinationConfiguration'
                     },
  'types' => {
               'IotEventsDestinationConfiguration' => {
                                                        'type' => 'IoTAnalytics_IotEventsDestinationConfiguration',
                                                        'class' => 'Paws::IoTAnalytics::IotEventsDestinationConfiguration'
                                                      },
               'S3DestinationConfiguration' => {
                                                 'type' => 'IoTAnalytics_S3DestinationConfiguration',
                                                 'class' => 'Paws::IoTAnalytics::S3DestinationConfiguration'
                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatasetContentDeliveryDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetContentDeliveryDestination object:

  $service_obj->Method(Att1 => { IotEventsDestinationConfiguration => $value, ..., S3DestinationConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetContentDeliveryDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->IotEventsDestinationConfiguration

=head1 DESCRIPTION

The destination to which data set contents are delivered.

=head1 ATTRIBUTES


=head2 IotEventsDestinationConfiguration => IoTAnalytics_IotEventsDestinationConfiguration

  Configuration information for delivery of data set contents to AWS IoT
Events.


=head2 S3DestinationConfiguration => IoTAnalytics_S3DestinationConfiguration

  Configuration information for delivery of data set contents to Amazon
S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

