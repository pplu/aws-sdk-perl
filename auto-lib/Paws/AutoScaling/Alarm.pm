package Paws::AutoScaling::Alarm;
  use Moose;
  has AlarmARN => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::Alarm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::Alarm object:

  $service_obj->Method(Att1 => { AlarmARN => $value, ..., AlarmName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::Alarm object:

  $result = $service_obj->Method(...);
  $result->Att1->AlarmARN

=head1 DESCRIPTION

Describes an alarm.

=head1 ATTRIBUTES


=head2 AlarmARN => Str

  The Amazon Resource Name (ARN) of the alarm.


=head2 AlarmName => Str

  The name of the alarm.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

