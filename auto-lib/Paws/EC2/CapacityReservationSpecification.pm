package Paws::EC2::CapacityReservationSpecification;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_CapacityReservationTarget/;
  has CapacityReservationPreference => (is => 'ro', isa => Str);
  has CapacityReservationTarget => (is => 'ro', isa => EC2_CapacityReservationTarget);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'CapacityReservationPreference' => {
                                                    'type' => 'Str'
                                                  },
               'CapacityReservationTarget' => {
                                                'class' => 'Paws::EC2::CapacityReservationTarget',
                                                'type' => 'EC2_CapacityReservationTarget'
                                              }
             }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityReservationSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityReservationSpecification object:

  $service_obj->Method(Att1 => { CapacityReservationPreference => $value, ..., CapacityReservationTarget => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityReservationSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityReservationPreference

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CapacityReservationPreference => Str

  Indicates the instance's Capacity Reservation preferences. Possible
preferences include:

=over

=item *

C<open> - The instance can run in any C<open> Capacity Reservation that
has matching attributes (instance type, platform, Availability Zone).

=item *

C<none> - The instance avoids running in a Capacity Reservation even if
one is available. The instance runs as an On-Demand Instance.

=back



=head2 CapacityReservationTarget => EC2_CapacityReservationTarget

  Information about the target Capacity Reservation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
