package Paws::Pinpoint::QuietTime;
  use Moose;
  has End => (is => 'ro', isa => 'Str');
  has Start => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::QuietTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::QuietTime object:

  $service_obj->Method(Att1 => { End => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::QuietTime object:

  $result = $service_obj->Method(...);
  $result->Att1->End

=head1 DESCRIPTION

Specifies the start and end times that define a time range when
messages aren't sent to endpoints.

=head1 ATTRIBUTES


=head2 End => Str

  The specific time when quiet time ends. This value has to use 24-hour
notation and be in HH:MM format, where HH is the hour (with a leading
zero, if applicable) and MM is the minutes. For example, use 02:30 to
represent 2:30 AM, or 14:30 to represent 2:30 PM.


=head2 Start => Str

  The specific time when quiet time begins. This value has to use 24-hour
notation and be in HH:MM format, where HH is the hour (with a leading
zero, if applicable) and MM is the minutes. For example, use 02:30 to
represent 2:30 AM, or 14:30 to represent 2:30 PM.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

