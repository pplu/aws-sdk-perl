
package Paws::Route53::GetGeoLocation;
  use Moose;
  has ContinentCode => (is => 'ro', isa => 'Str', query_name => 'continentcode', traits => ['ParamInQuery']);
  has CountryCode => (is => 'ro', isa => 'Str', query_name => 'countrycode', traits => ['ParamInQuery']);
  has SubdivisionCode => (is => 'ro', isa => 'Str', query_name => 'subdivisioncode', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGeoLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/geolocation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetGeoLocationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetGeoLocation - Arguments for method GetGeoLocation on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGeoLocation on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method GetGeoLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGeoLocation.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $GetGeoLocationResponse = $route53->GetGeoLocation(
      ContinentCode   => 'MyGeoLocationContinentCode',      # OPTIONAL
      CountryCode     => 'MyGeoLocationCountryCode',        # OPTIONAL
      SubdivisionCode => 'MyGeoLocationSubdivisionCode',    # OPTIONAL
    );

    # Results:
    my $GeoLocationDetails = $GetGeoLocationResponse->GeoLocationDetails;

    # Returns a L<Paws::Route53::GetGeoLocationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/GetGeoLocation>

=head1 ATTRIBUTES


=head2 ContinentCode => Str

Amazon Route 53 supports the following continent codes:

=over

=item *

B<AF>: Africa

=item *

B<AN>: Antarctica

=item *

B<AS>: Asia

=item *

B<EU>: Europe

=item *

B<OC>: Oceania

=item *

B<NA>: North America

=item *

B<SA>: South America

=back




=head2 CountryCode => Str

Amazon Route 53 uses the two-letter country codes that are specified in
ISO standard 3166-1 alpha-2
(https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).



=head2 SubdivisionCode => Str

Amazon Route 53 uses the one- to three-letter subdivision codes that
are specified in ISO standard 3166-1 alpha-2
(https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). Route 53 doesn't
support subdivision codes for all countries. If you specify
C<subdivisioncode>, you must also specify C<countrycode>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGeoLocation in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

