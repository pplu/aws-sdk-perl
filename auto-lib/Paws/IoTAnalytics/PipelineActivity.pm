package Paws::IoTAnalytics::PipelineActivity;
  use Moose;
  has AddAttributes => (is => 'ro', isa => 'Paws::IoTAnalytics::AddAttributesActivity', request_name => 'addAttributes', traits => ['NameInRequest']);
  has Channel => (is => 'ro', isa => 'Paws::IoTAnalytics::ChannelActivity', request_name => 'channel', traits => ['NameInRequest']);
  has Datastore => (is => 'ro', isa => 'Paws::IoTAnalytics::DatastoreActivity', request_name => 'datastore', traits => ['NameInRequest']);
  has DeviceRegistryEnrich => (is => 'ro', isa => 'Paws::IoTAnalytics::DeviceRegistryEnrichActivity', request_name => 'deviceRegistryEnrich', traits => ['NameInRequest']);
  has DeviceShadowEnrich => (is => 'ro', isa => 'Paws::IoTAnalytics::DeviceShadowEnrichActivity', request_name => 'deviceShadowEnrich', traits => ['NameInRequest']);
  has Filter => (is => 'ro', isa => 'Paws::IoTAnalytics::FilterActivity', request_name => 'filter', traits => ['NameInRequest']);
  has Lambda => (is => 'ro', isa => 'Paws::IoTAnalytics::LambdaActivity', request_name => 'lambda', traits => ['NameInRequest']);
  has Math => (is => 'ro', isa => 'Paws::IoTAnalytics::MathActivity', request_name => 'math', traits => ['NameInRequest']);
  has RemoveAttributes => (is => 'ro', isa => 'Paws::IoTAnalytics::RemoveAttributesActivity', request_name => 'removeAttributes', traits => ['NameInRequest']);
  has SelectAttributes => (is => 'ro', isa => 'Paws::IoTAnalytics::SelectAttributesActivity', request_name => 'selectAttributes', traits => ['NameInRequest']);
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


=head2 AddAttributes => L<Paws::IoTAnalytics::AddAttributesActivity>

  Adds other attributes based on existing attributes in the message.


=head2 Channel => L<Paws::IoTAnalytics::ChannelActivity>

  Determines the source of the messages to be processed.


=head2 Datastore => L<Paws::IoTAnalytics::DatastoreActivity>

  Specifies where to store the processed message data.


=head2 DeviceRegistryEnrich => L<Paws::IoTAnalytics::DeviceRegistryEnrichActivity>

  Adds data from the AWS IoT device registry to your message.


=head2 DeviceShadowEnrich => L<Paws::IoTAnalytics::DeviceShadowEnrichActivity>

  Adds information from the AWS IoT Device Shadows service to a message.


=head2 Filter => L<Paws::IoTAnalytics::FilterActivity>

  Filters a message based on its attributes.


=head2 Lambda => L<Paws::IoTAnalytics::LambdaActivity>

  Runs a Lambda function to modify the message.


=head2 Math => L<Paws::IoTAnalytics::MathActivity>

  Computes an arithmetic expression using the message's attributes and
adds it to the message.


=head2 RemoveAttributes => L<Paws::IoTAnalytics::RemoveAttributesActivity>

  Removes attributes from a message.


=head2 SelectAttributes => L<Paws::IoTAnalytics::SelectAttributesActivity>

  Creates a new message using only the specified attributes from the
original message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

