
package Paws::MediaConnect::PurchaseOffering;
  use Moose;
  has OfferingArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'offeringArn', required => 1);
  has ReservationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reservationName', required => 1);
  has Start => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'start', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseOffering');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/offerings/{offeringArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::PurchaseOfferingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::PurchaseOffering - Arguments for method PurchaseOffering on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseOffering on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method PurchaseOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseOffering.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $PurchaseOfferingResponse = $mediaconnect->PurchaseOffering(
      OfferingArn     => 'My__string',
      ReservationName => 'My__string',
      Start           => 'My__string',

    );

    # Results:
    my $Reservation = $PurchaseOfferingResponse->Reservation;

    # Returns a L<Paws::MediaConnect::PurchaseOfferingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/PurchaseOffering>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OfferingArn => Str

The Amazon Resource Name (ARN) of the offering.



=head2 B<REQUIRED> ReservationName => Str

The name that you want to use for the reservation.



=head2 B<REQUIRED> Start => Str

The date and time that you want the reservation to begin, in
Coordinated Universal Time (UTC). You can specify any date and time
between 12:00am on the first day of the current month to the current
time on today's date, inclusive. Specify the start in a 24-hour
notation. Use the following format: YYYY-MM-DDTHH:mm:SSZ, where T and Z
are literal characters. For example, to specify 11:30pm on March 5,
2020, enter 2020-03-05T23:30:00Z.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseOffering in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

