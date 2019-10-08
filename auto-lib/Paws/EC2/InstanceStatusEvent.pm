package Paws::EC2::InstanceStatusEvent;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has Code => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has InstanceEventId => (is => 'ro', isa => Str);
  has NotAfter => (is => 'ro', isa => Str);
  has NotBefore => (is => 'ro', isa => Str);
  has NotBeforeDeadline => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Code' => {
                           'type' => 'Str'
                         },
               'NotAfter' => {
                               'type' => 'Str'
                             },
               'InstanceEventId' => {
                                      'type' => 'Str'
                                    },
               'NotBeforeDeadline' => {
                                        'type' => 'Str'
                                      },
               'NotBefore' => {
                                'type' => 'Str'
                              },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Code' => 'code',
                       'NotAfter' => 'notAfter',
                       'InstanceEventId' => 'instanceEventId',
                       'NotBeforeDeadline' => 'notBeforeDeadline',
                       'NotBefore' => 'notBefore',
                       'Description' => 'description'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceStatusEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceStatusEvent object:

  $service_obj->Method(Att1 => { Code => $value, ..., NotBeforeDeadline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceStatusEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Code => Str

  The event code.


=head2 Description => Str

  A description of the event.

After a scheduled event is completed, it can still be described for up
to a week. If the event has been completed, this description starts
with the following text: [Completed].


=head2 InstanceEventId => Str

  The ID of the event.


=head2 NotAfter => Str

  The latest scheduled end time for the event.


=head2 NotBefore => Str

  The earliest scheduled start time for the event.


=head2 NotBeforeDeadline => Str

  The deadline for starting the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
