# Generated from default/object.tt
package Paws::IoTEventsData::UpdateDetectorRequest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEventsData::Types qw/IoTEventsData_DetectorStateDefinition/;
  has DetectorModelName => (is => 'ro', isa => Str, required => 1);
  has KeyValue => (is => 'ro', isa => Str);
  has MessageId => (is => 'ro', isa => Str, required => 1);
  has State => (is => 'ro', isa => IoTEventsData_DetectorStateDefinition, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KeyValue' => {
                               'type' => 'Str'
                             },
               'State' => {
                            'class' => 'Paws::IoTEventsData::DetectorStateDefinition',
                            'type' => 'IoTEventsData_DetectorStateDefinition'
                          },
               'MessageId' => {
                                'type' => 'Str'
                              },
               'DetectorModelName' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'KeyValue' => 'keyValue',
                       'State' => 'state',
                       'MessageId' => 'messageId',
                       'DetectorModelName' => 'detectorModelName'
                     },
  'IsRequired' => {
                    'State' => 1,
                    'MessageId' => 1,
                    'DetectorModelName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::UpdateDetectorRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::UpdateDetectorRequest object:

  $service_obj->Method(Att1 => { DetectorModelName => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::UpdateDetectorRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DetectorModelName

=head1 DESCRIPTION

Information used to update the detector (instance).

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorModelName => Str

  The name of the detector model that created the detectors (instances).


=head2 KeyValue => Str

  The value of the input key attribute (identifying the device or system)
that caused the creation of this detector (instance).


=head2 B<REQUIRED> MessageId => Str

  The ID to assign to the detector update C<"message">. Each
C<"messageId"> must be unique within each batch sent.


=head2 B<REQUIRED> State => IoTEventsData_DetectorStateDefinition

  The new state, variable values, and timer settings of the detector
(instance).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

