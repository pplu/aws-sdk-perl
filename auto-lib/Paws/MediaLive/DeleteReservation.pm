
package Paws::MediaLive::DeleteReservation;
  use Moose;
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'reservationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReservation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/reservations/{reservationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DeleteReservationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DeleteReservation - Arguments for method DeleteReservation on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReservation on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DeleteReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReservation.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DeleteReservationResponse = $medialive->DeleteReservation(
      ReservationId => 'My__string',

    );

    # Results:
    my $Arn                 = $DeleteReservationResponse->Arn;
    my $Count               = $DeleteReservationResponse->Count;
    my $CurrencyCode        = $DeleteReservationResponse->CurrencyCode;
    my $Duration            = $DeleteReservationResponse->Duration;
    my $DurationUnits       = $DeleteReservationResponse->DurationUnits;
    my $End                 = $DeleteReservationResponse->End;
    my $FixedPrice          = $DeleteReservationResponse->FixedPrice;
    my $Name                = $DeleteReservationResponse->Name;
    my $OfferingDescription = $DeleteReservationResponse->OfferingDescription;
    my $OfferingId          = $DeleteReservationResponse->OfferingId;
    my $OfferingType        = $DeleteReservationResponse->OfferingType;
    my $Region              = $DeleteReservationResponse->Region;
    my $ReservationId       = $DeleteReservationResponse->ReservationId;
    my $ResourceSpecification =
      $DeleteReservationResponse->ResourceSpecification;
    my $Start      = $DeleteReservationResponse->Start;
    my $State      = $DeleteReservationResponse->State;
    my $UsagePrice = $DeleteReservationResponse->UsagePrice;

    # Returns a L<Paws::MediaLive::DeleteReservationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DeleteReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReservationId => Str

Unique reservation ID, e.g. '1234567'




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReservation in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

