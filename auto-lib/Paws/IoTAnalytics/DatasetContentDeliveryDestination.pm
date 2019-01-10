package Paws::IoTAnalytics::DatasetContentDeliveryDestination;
  use Moose;
  has IotEventsDestinationConfiguration => (is => 'ro', isa => 'Paws::IoTAnalytics::IotEventsDestinationConfiguration', request_name => 'iotEventsDestinationConfiguration', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { IotEventsDestinationConfiguration => $value, ..., IotEventsDestinationConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetContentDeliveryDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->IotEventsDestinationConfiguration

=head1 DESCRIPTION

The destination to which data set contents are delivered.

=head1 ATTRIBUTES


=head2 IotEventsDestinationConfiguration => L<Paws::IoTAnalytics::IotEventsDestinationConfiguration>

  Configuration information for delivery of data set contents to AWS IoT
Events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

