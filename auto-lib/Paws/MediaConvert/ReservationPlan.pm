# Generated from default/object.tt
package Paws::MediaConvert::ReservationPlan;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw//;
  has Commitment => (is => 'ro', isa => Str);
  has ExpiresAt => (is => 'ro', isa => Str);
  has PurchasedAt => (is => 'ro', isa => Str);
  has RenewalType => (is => 'ro', isa => Str);
  has ReservedSlots => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RenewalType' => {
                                  'type' => 'Str'
                                },
               'Commitment' => {
                                 'type' => 'Str'
                               },
               'Status' => {
                             'type' => 'Str'
                           },
               'ReservedSlots' => {
                                    'type' => 'Int'
                                  },
               'PurchasedAt' => {
                                  'type' => 'Str'
                                },
               'ExpiresAt' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'RenewalType' => 'renewalType',
                       'Commitment' => 'commitment',
                       'Status' => 'status',
                       'ReservedSlots' => 'reservedSlots',
                       'PurchasedAt' => 'purchasedAt',
                       'ExpiresAt' => 'expiresAt'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ReservationPlan

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::ReservationPlan object:

  $service_obj->Method(Att1 => { Commitment => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::ReservationPlan object:

  $result = $service_obj->Method(...);
  $result->Att1->Commitment

=head1 DESCRIPTION

Details about the pricing plan for your reserved queue. Required for
reserved queues and not applicable to on-demand queues.

=head1 ATTRIBUTES


=head2 Commitment => Str

  The length of the term of your reserved queue pricing plan commitment.


=head2 ExpiresAt => Str

  The timestamp in epoch seconds for when the current pricing plan term
for this reserved queue expires.


=head2 PurchasedAt => Str

  The timestamp in epoch seconds for when you set up the current pricing
plan for this reserved queue.


=head2 RenewalType => Str

  Specifies whether the term of your reserved queue pricing plan is
automatically extended (AUTO_RENEW) or expires (EXPIRE) at the end of
the term.


=head2 ReservedSlots => Int

  Specifies the number of reserved transcode slots (RTS) for this queue.
The number of RTS determines how many jobs the queue can process in
parallel; each RTS can process one job at a time. When you increase
this number, you extend your existing commitment with a new 12-month
commitment for a larger number of RTS. The new commitment begins when
you purchase the additional capacity. You can't decrease the number of
RTS in your reserved queue.


=head2 Status => Str

  Specifies whether the pricing plan for your reserved queue is ACTIVE or
EXPIRED.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

