
package Paws::Route53::GetGeoLocation;
  use Moose;
  has ContinentCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'continentcode' );
  has CountryCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'countrycode' );
  has SubdivisionCode => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'subdivisioncode' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGeoLocation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/geolocation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetGeoLocationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetGeoLocation

=head1 ATTRIBUTES


=head2 ContinentCode => Str

Amazon Route 53 supports the following contintent codes:

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
ISO standard 3166-1 alpha-2.



=head2 SubdivisionCode => Str

Amazon Route 53 uses the one- to three-letter subdivision codes that
are specified in ISO standard 3166-1 alpha-2. Amazon Route 53 doesn't
support subdivision codes for all countries. If you specify
C<SubdivisionCode>, you must also specify C<CountryCode>.




=cut

