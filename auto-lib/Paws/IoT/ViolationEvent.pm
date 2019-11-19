# Generated from default/object.tt
package Paws::IoT::ViolationEvent;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_Behavior IoT_MetricValue/;
  has Behavior => (is => 'ro', isa => IoT_Behavior);
  has MetricValue => (is => 'ro', isa => IoT_MetricValue);
  has SecurityProfileName => (is => 'ro', isa => Str);
  has ThingName => (is => 'ro', isa => Str);
  has ViolationEventTime => (is => 'ro', isa => Str);
  has ViolationEventType => (is => 'ro', isa => Str);
  has ViolationId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ViolationEventTime' => {
                                         'type' => 'Str'
                                       },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'Behavior' => {
                               'type' => 'IoT_Behavior',
                               'class' => 'Paws::IoT::Behavior'
                             },
               'ViolationId' => {
                                  'type' => 'Str'
                                },
               'MetricValue' => {
                                  'class' => 'Paws::IoT::MetricValue',
                                  'type' => 'IoT_MetricValue'
                                },
               'ViolationEventType' => {
                                         'type' => 'Str'
                                       },
               'SecurityProfileName' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'ViolationEventType' => 'violationEventType',
                       'SecurityProfileName' => 'securityProfileName',
                       'Behavior' => 'behavior',
                       'MetricValue' => 'metricValue',
                       'ViolationId' => 'violationId',
                       'ThingName' => 'thingName',
                       'ViolationEventTime' => 'violationEventTime'
                     }
}
;
    return $Params_map;
  }


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


=head2 Behavior => IoT_Behavior

  The behavior which was violated.


=head2 MetricValue => IoT_MetricValue

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

