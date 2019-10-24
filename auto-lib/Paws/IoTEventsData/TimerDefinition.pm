# Generated from default/object.tt
package Paws::IoTEventsData::TimerDefinition;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTEventsData::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);
  has Seconds => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Seconds' => {
                              'type' => 'Int'
                            }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'Seconds' => 'seconds'
                     },
  'IsRequired' => {
                    'Name' => 1,
                    'Seconds' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEventsData::TimerDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::TimerDefinition object:

  $service_obj->Method(Att1 => { Name => $value, ..., Seconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::TimerDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The new setting of a timer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the timer.


=head2 B<REQUIRED> Seconds => Int

  The new setting of the timer (the number of seconds before the timer
elapses).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

