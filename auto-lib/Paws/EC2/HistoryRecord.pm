package Paws::EC2::HistoryRecord;
  use Moose;
  has EventInformation => (is => 'ro', isa => 'Paws::EC2::EventInformation', request_name => 'eventInformation', traits => ['NameInRequest'], required => 1);
  has EventType => (is => 'ro', isa => 'Str', request_name => 'eventType', traits => ['NameInRequest'], required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', request_name => 'timestamp', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::HistoryRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::HistoryRecord object:

  $service_obj->Method(Att1 => { EventInformation => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::HistoryRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->EventInformation

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventInformation => L<Paws::EC2::EventInformation>

  Information about the event.


=head2 B<REQUIRED> EventType => Str

  The event type.

=over

=item *

C<error> - Indicates an error with the Spot fleet request.

=item *

C<fleetRequestChange> - Indicates a change in the status or
configuration of the Spot fleet request.

=item *

C<instanceChange> - Indicates that an instance was launched or
terminated.

=back



=head2 B<REQUIRED> Timestamp => Str

  The date and time of the event, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
