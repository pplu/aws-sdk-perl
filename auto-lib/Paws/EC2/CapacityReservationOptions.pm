package Paws::EC2::CapacityReservationOptions;
  use Moose;
  has UsageStrategy => (is => 'ro', isa => 'Str', request_name => 'usageStrategy', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityReservationOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityReservationOptions object:

  $service_obj->Method(Att1 => { UsageStrategy => $value, ..., UsageStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityReservationOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->UsageStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 UsageStrategy => Str

Indicates whether to use unused Capacity Reservations for fulfilling
On-Demand capacity.

If you specify C<use-capacity-reservations-first>, the fleet uses
unused Capacity Reservations to fulfill On-Demand capacity up to the
target On-Demand capacity. If multiple instance pools have unused
Capacity Reservations, the On-Demand allocation strategy
(C<lowest-price> or C<prioritized>) is applied. If the number of unused
Capacity Reservations is less than the On-Demand target capacity, the
remaining On-Demand target capacity is launched according to the
On-Demand allocation strategy (C<lowest-price> or C<prioritized>).

If you do not specify a value, the fleet fulfils the On-Demand capacity
according to the chosen On-Demand allocation strategy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
