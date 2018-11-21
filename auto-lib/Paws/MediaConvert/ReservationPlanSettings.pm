package Paws::MediaConvert::ReservationPlanSettings;
  use Moose;
  has Commitment => (is => 'ro', isa => 'Str', request_name => 'commitment', traits => ['NameInRequest'], required => 1);
  has RenewalType => (is => 'ro', isa => 'Str', request_name => 'renewalType', traits => ['NameInRequest'], required => 1);
  has ReservedSlots => (is => 'ro', isa => 'Int', request_name => 'reservedSlots', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ReservationPlanSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ReservationPlanSettings object:

  $service_obj->Method(Att1 => { Commitment => $value, ..., ReservedSlots => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ReservationPlanSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Commitment

=head1 DESCRIPTION

Details about the pricing plan for your reserved queue. Required for
reserved queues and not applicable to on-demand queues.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Commitment => Str

  The length of time that you commit to when you set up a pricing plan
contract for a reserved queue.


=head2 B<REQUIRED> RenewalType => Str

  Specifies whether the pricing plan contract for your reserved queue
automatically renews (AUTO_RENEW) or expires (EXPIRE) at the end of the
contract period.


=head2 B<REQUIRED> ReservedSlots => Int

  Specifies the number of reserved transcode slots (RTS) for this queue.
The number of RTS determines how many jobs the queue can process in
parallel; each RTS can process one job at a time. To increase this
number, create a replacement contract through the AWS Elemental
MediaConvert console.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

