package Paws::IoTAnalytics::DeltaTime;
  use Moose;
  has OffsetSeconds => (is => 'ro', isa => 'Int', request_name => 'offsetSeconds', traits => ['NameInRequest'], required => 1);
  has TimeExpression => (is => 'ro', isa => 'Str', request_name => 'timeExpression', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DeltaTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DeltaTime object:

  $service_obj->Method(Att1 => { OffsetSeconds => $value, ..., TimeExpression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DeltaTime object:

  $result = $service_obj->Method(...);
  $result->Att1->OffsetSeconds

=head1 DESCRIPTION

Used to limit data to that which has arrived since the last execution
of the action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> OffsetSeconds => Int

  The number of seconds of estimated "in flight" lag time of message
data. When you create data set contents using message data from a
specified time frame, some message data may still be "in flight" when
processing begins, and so will not arrive in time to be processed. Use
this field to make allowances for the "in flight" time of your message
data, so that data not processed from a previous time frame will be
included with the next time frame. Without this, missed message data
would be excluded from processing during the next time frame as well,
because its timestamp places it within the previous time frame.


=head2 B<REQUIRED> TimeExpression => Str

  An expression by which the time of the message data may be determined.
This may be the name of a timestamp field, or a SQL expression which is
used to derive the time the message data was generated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

