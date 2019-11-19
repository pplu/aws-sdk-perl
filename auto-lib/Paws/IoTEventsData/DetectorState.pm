# Generated from default/object.tt
package Paws::IoTEventsData::DetectorState;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEventsData::Types qw/IoTEventsData_Timer IoTEventsData_Variable/;
  has StateName => (is => 'ro', isa => Str, required => 1);
  has Timers => (is => 'ro', isa => ArrayRef[IoTEventsData_Timer], required => 1);
  has Variables => (is => 'ro', isa => ArrayRef[IoTEventsData_Variable], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StateName' => {
                                'type' => 'Str'
                              },
               'Variables' => {
                                'type' => 'ArrayRef[IoTEventsData_Variable]',
                                'class' => 'Paws::IoTEventsData::Variable'
                              },
               'Timers' => {
                             'class' => 'Paws::IoTEventsData::Timer',
                             'type' => 'ArrayRef[IoTEventsData_Timer]'
                           }
             },
  'NameInRequest' => {
                       'Timers' => 'timers',
                       'Variables' => 'variables',
                       'StateName' => 'stateName'
                     },
  'IsRequired' => {
                    'StateName' => 1,
                    'Variables' => 1,
                    'Timers' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::DetectorState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::DetectorState object:

  $service_obj->Method(Att1 => { StateName => $value, ..., Variables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::DetectorState object:

  $result = $service_obj->Method(...);
  $result->Att1->StateName

=head1 DESCRIPTION

Information about the current state of the detector instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> StateName => Str

  The name of the state.


=head2 B<REQUIRED> Timers => ArrayRef[IoTEventsData_Timer]

  The current state of the detector's timers.


=head2 B<REQUIRED> Variables => ArrayRef[IoTEventsData_Variable]

  The current values of the detector's variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

