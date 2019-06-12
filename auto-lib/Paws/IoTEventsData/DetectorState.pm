package Paws::IoTEventsData::DetectorState;
  use Moose;
  has StateName => (is => 'ro', isa => 'Str', request_name => 'stateName', traits => ['NameInRequest'], required => 1);
  has Timers => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::Timer]', request_name => 'timers', traits => ['NameInRequest'], required => 1);
  has Variables => (is => 'ro', isa => 'ArrayRef[Paws::IoTEventsData::Variable]', request_name => 'variables', traits => ['NameInRequest'], required => 1);
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


=head2 B<REQUIRED> Timers => ArrayRef[L<Paws::IoTEventsData::Timer>]

  The current state of the detector's timers.


=head2 B<REQUIRED> Variables => ArrayRef[L<Paws::IoTEventsData::Variable>]

  The current state of the detector's variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

