package Paws::IoTAnalytics::DeviceShadowEnrichActivity;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', request_name => 'attribute', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Next => (is => 'ro', isa => 'Str', request_name => 'next', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has ThingName => (is => 'ro', isa => 'Str', request_name => 'thingName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DeviceShadowEnrichActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DeviceShadowEnrichActivity object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., ThingName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DeviceShadowEnrichActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

An activity that adds information from the AWS IoT Device Shadows
service to a message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attribute => Str

  The name of the attribute that is added to the message.


=head2 B<REQUIRED> Name => Str

  The name of the 'deviceShadowEnrich' activity.


=head2 Next => Str

  The next activity in the pipeline.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that allows access to the device's shadow.


=head2 B<REQUIRED> ThingName => Str

  The name of the IoT device whose shadow information is added to the
message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

