
package Paws::MediaLive::UpdateReservation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw//;
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has ReservationId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateReservation');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/prod/reservations/{reservationId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaLive::UpdateReservationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'ReservationId' => {
                                    'type' => 'Str'
                                  }
             },
  'ParamInURI' => {
                    'ReservationId' => 'reservationId'
                  },
  'NameInRequest' => {
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'ReservationId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateReservation - Arguments for method UpdateReservation on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReservation on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method UpdateReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReservation.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $UpdateReservationResponse = $medialive->UpdateReservation(
      ReservationId => 'My__string',
      Name          => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Reservation = $UpdateReservationResponse->Reservation;

    # Returns a L<Paws::MediaLive::UpdateReservationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/UpdateReservation>

=head1 ATTRIBUTES


=head2 Name => Str

Name of the reservation



=head2 B<REQUIRED> ReservationId => Str

Unique reservation ID, e.g. '1234567'




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReservation in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

