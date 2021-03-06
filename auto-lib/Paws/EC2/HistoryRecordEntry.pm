package Paws::EC2::HistoryRecordEntry;
  use Moose;
  has EventInformation => (is => 'ro', isa => 'Paws::EC2::EventInformation', request_name => 'eventInformation', traits => ['NameInRequest']);
  has EventType => (is => 'ro', isa => 'Str', request_name => 'eventType', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::HistoryRecordEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::HistoryRecordEntry object:

  $service_obj->Method(Att1 => { EventInformation => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::HistoryRecordEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->EventInformation

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EventInformation => L<Paws::EC2::EventInformation>

Information about the event.


=head2 EventType => Str

The event type.


=head2 Timestamp => Str

The date and time of the event, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
