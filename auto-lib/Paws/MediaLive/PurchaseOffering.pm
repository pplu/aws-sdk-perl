
package Paws::MediaLive::PurchaseOffering;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'count', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has OfferingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'offeringId', required => 1);
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has Start => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'start');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseOffering');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/offerings/{offeringId}/purchase');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::PurchaseOfferingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::PurchaseOffering - Arguments for method PurchaseOffering on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseOffering on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method PurchaseOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseOffering.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $PurchaseOfferingResponse = $medialive->PurchaseOffering(
      Count      => 1,
      OfferingId => 'My__string',
      Name       => 'My__string',    # OPTIONAL
      RequestId  => 'My__string',    # OPTIONAL
      Start      => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Reservation = $PurchaseOfferingResponse->Reservation;

    # Returns a L<Paws::MediaLive::PurchaseOfferingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/PurchaseOffering>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

Number of resources



=head2 Name => Str

Name for the new reservation



=head2 B<REQUIRED> OfferingId => Str

Offering to purchase, e.g. '87654321'



=head2 RequestId => Str

Unique request ID to be specified. This is needed to prevent retries
from creating multiple resources.



=head2 Start => Str

Requested reservation start time (UTC) in ISO-8601 format. The
specified time must be between the first day of the current month and
one year from now. If no value is given, the default is now.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseOffering in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

