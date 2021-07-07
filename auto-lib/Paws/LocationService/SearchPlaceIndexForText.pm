
package Paws::LocationService::SearchPlaceIndexForText;
  use Moose;
  has BiasPosition => (is => 'ro', isa => 'ArrayRef[Num]');
  has FilterBBox => (is => 'ro', isa => 'ArrayRef[Num]');
  has FilterCountries => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IndexName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IndexName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchPlaceIndexForText');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes/{IndexName}/search/text');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::SearchPlaceIndexForTextResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::SearchPlaceIndexForText - Arguments for method SearchPlaceIndexForText on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchPlaceIndexForText on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method SearchPlaceIndexForText.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchPlaceIndexForText.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $SearchPlaceIndexForTextResponse = $geo->SearchPlaceIndexForText(
      IndexName       => 'MyResourceName',
      Text            => 'MySyntheticSearchPlaceIndexForTextRequestString',
      BiasPosition    => [ 1,               ... ],    # OPTIONAL
      FilterBBox      => [ 1,               ... ],    # OPTIONAL
      FilterCountries => [ 'MyCountryCode', ... ],    # OPTIONAL
      MaxResults      => 1,                           # OPTIONAL
    );

    # Results:
    my $Results = $SearchPlaceIndexForTextResponse->Results;
    my $Summary = $SearchPlaceIndexForTextResponse->Summary;

   # Returns a L<Paws::LocationService::SearchPlaceIndexForTextResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/SearchPlaceIndexForText>

=head1 ATTRIBUTES


=head2 BiasPosition => ArrayRef[Num]

Searches for results closest to the given position. An optional
parameter defined by longitude, and latitude.

=over

=item *

The first C<bias> position is the X coordinate, or longitude.

=item *

The second C<bias> position is the Y coordinate, or latitude.

=back

For example, C<bias=xLongitude&bias=yLatitude>.



=head2 FilterBBox => ArrayRef[Num]

Filters the results by returning only Places within the provided
bounding box. An optional parameter.

The first 2 C<bbox> parameters describe the lower southwest corner:

=over

=item *

The first C<bbox> position is the X coordinate or longitude of the
lower southwest corner.

=item *

The second C<bbox> position is the Y coordinate or latitude of the
lower southwest corner.

=back

For example, C<bbox=xLongitudeSW&bbox=yLatitudeSW>.

The next C<bbox> parameters describe the upper northeast corner:

=over

=item *

The third C<bbox> position is the X coordinate, or longitude of the
upper northeast corner.

=item *

The fourth C<bbox> position is the Y coordinate, or longitude of the
upper northeast corner.

=back

For example, C<bbox=xLongitudeNE&bbox=yLatitudeNE>



=head2 FilterCountries => ArrayRef[Str|Undef]

Limits the search to the given a list of countries/regions. An optional
parameter.

=over

=item *

Use the ISO 3166 (https://www.iso.org/iso-3166-country-codes.html)
3-digit country code. For example, Australia uses three upper-case
characters: C<AUS>.

=back




=head2 B<REQUIRED> IndexName => Str

The name of the Place index resource you want to use for the search.



=head2 MaxResults => Int

An optional parameter. The maximum number of results returned per
request.

The default: C<50>



=head2 B<REQUIRED> Text => Str

The address, name, city, or region to be used in the search. In
free-form text format. For example, C<123 Any Street>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchPlaceIndexForText in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

