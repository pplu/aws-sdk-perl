# Generated from default/object.tt
package Paws::IoT::ActiveViolation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_Behavior IoT_MetricValue/;
  has Behavior => (is => 'ro', isa => IoT_Behavior);
  has LastViolationTime => (is => 'ro', isa => Str);
  has LastViolationValue => (is => 'ro', isa => IoT_MetricValue);
  has SecurityProfileName => (is => 'ro', isa => Str);
  has ThingName => (is => 'ro', isa => Str);
  has ViolationId => (is => 'ro', isa => Str);
  has ViolationStartTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastViolationValue' => {
                                         'class' => 'Paws::IoT::MetricValue',
                                         'type' => 'IoT_MetricValue'
                                       },
               'LastViolationTime' => {
                                        'type' => 'Str'
                                      },
               'ViolationStartTime' => {
                                         'type' => 'Str'
                                       },
               'ThingName' => {
                                'type' => 'Str'
                              },
               'Behavior' => {
                               'class' => 'Paws::IoT::Behavior',
                               'type' => 'IoT_Behavior'
                             },
               'ViolationId' => {
                                  'type' => 'Str'
                                },
               'SecurityProfileName' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'LastViolationValue' => 'lastViolationValue',
                       'LastViolationTime' => 'lastViolationTime',
                       'ViolationStartTime' => 'violationStartTime',
                       'ThingName' => 'thingName',
                       'Behavior' => 'behavior',
                       'ViolationId' => 'violationId',
                       'SecurityProfileName' => 'securityProfileName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ActiveViolation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ActiveViolation object:

  $service_obj->Method(Att1 => { Behavior => $value, ..., ViolationStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ActiveViolation object:

  $result = $service_obj->Method(...);
  $result->Att1->Behavior

=head1 DESCRIPTION

Information about an active Device Defender security profile behavior
violation.

=head1 ATTRIBUTES


=head2 Behavior => IoT_Behavior

  The behavior which is being violated.


=head2 LastViolationTime => Str

  The time the most recent violation occurred.


=head2 LastViolationValue => IoT_MetricValue

  The value of the metric (the measurement) which caused the most recent
violation.


=head2 SecurityProfileName => Str

  The security profile whose behavior is in violation.


=head2 ThingName => Str

  The name of the thing responsible for the active violation.


=head2 ViolationId => Str

  The ID of the active violation.


=head2 ViolationStartTime => Str

  The time the violation started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

