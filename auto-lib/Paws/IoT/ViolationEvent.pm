package Paws::IoT::ViolationEvent;
  use Moose;
  has Behavior => (is => 'ro', isa => 'Paws::IoT::Behavior', request_name => 'behavior', traits => ['NameInRequest']);
  has MetricValue => (is => 'ro', isa => 'Paws::IoT::MetricValue', request_name => 'metricValue', traits => ['NameInRequest']);
  has SecurityProfileName => (is => 'ro', isa => 'Str', request_name => 'securityProfileName', traits => ['NameInRequest']);
  has ThingName => (is => 'ro', isa => 'Str', request_name => 'thingName', traits => ['NameInRequest']);
  has ViolationEventTime => (is => 'ro', isa => 'Str', request_name => 'violationEventTime', traits => ['NameInRequest']);
  has ViolationEventType => (is => 'ro', isa => 'Str', request_name => 'violationEventType', traits => ['NameInRequest']);
  has ViolationId => (is => 'ro', isa => 'Str', request_name => 'violationId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ViolationEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ViolationEvent object:

  $service_obj->Method(Att1 => { Behavior => $value, ..., ViolationId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ViolationEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Behavior

=head1 DESCRIPTION

Information about a Device Defender security profile behavior
violation.

=head1 ATTRIBUTES


=head2 Behavior => L<Paws::IoT::Behavior>

  The behavior which was violated.


=head2 MetricValue => L<Paws::IoT::MetricValue>

  The value of the metric (the measurement).


=head2 SecurityProfileName => Str

  The name of the security profile whose behavior was violated.


=head2 ThingName => Str

  The name of the thing responsible for the violation event.


=head2 ViolationEventTime => Str

  The time the violation event occurred.


=head2 ViolationEventType => Str

  The type of violation event.


=head2 ViolationId => Str

  The ID of the violation event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

