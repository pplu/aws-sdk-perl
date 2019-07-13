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

  The length of the term of your reserved queue pricing plan commitment.


=head2 B<REQUIRED> RenewalType => Str

  Specifies whether the term of your reserved queue pricing plan is
automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of
the term. When your term is auto renewed, you extend your commitment by
12 months from the auto renew date. You can cancel this commitment.


=head2 B<REQUIRED> ReservedSlots => Int

  Specifies the number of reserved transcode slots (RTS) for this queue.
The number of RTS determines how many jobs the queue can process in
parallel; each RTS can process one job at a time. You can't decrease
the number of RTS in your reserved queue. You can increase the number
of RTS by extending your existing commitment with a new 12-month
commitment for the larger number. The new commitment begins when you
purchase the additional capacity. You can't cancel your commitment or
revert to your original commitment after you increase the capacity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

