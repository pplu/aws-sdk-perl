package Paws::Route53::GeoLocationDetails;
  use Moose;
  has ContinentCode => (is => 'ro', isa => 'Str');
  has ContinentName => (is => 'ro', isa => 'Str');
  has CountryCode => (is => 'ro', isa => 'Str');
  has CountryName => (is => 'ro', isa => 'Str');
  has SubdivisionCode => (is => 'ro', isa => 'Str');
  has SubdivisionName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GeoLocationDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::GeoLocationDetails object:

  $service_obj->Method(Att1 => { ContinentCode => $value, ..., SubdivisionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::GeoLocationDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ContinentCode

=head1 DESCRIPTION

A complex type that contains information about a C<GeoLocation>.

=head1 ATTRIBUTES

=head2 ContinentCode => Str

  The code for a continent geo location. Note: only continent locations
have a continent code.

=head2 ContinentName => Str

  The name of the continent. This element is only present if
C<ContinentCode> is also present.

=head2 CountryCode => Str

  The code for a country geo location. The default location uses '*' for
the country code and will match all locations that are not matched by a
geo location.

The default geo location uses a C<*> for the country code. All other
country codes follow the ISO 3166 two-character code.

=head2 CountryName => Str

  The name of the country. This element is only present if C<CountryCode>
is also present.

=head2 SubdivisionCode => Str

  The code for a country's subdivision (e.g., a province of Canada). A
subdivision code is only valid with the appropriate country code.

=head2 SubdivisionName => Str

  The name of the subdivision. This element is only present if
C<SubdivisionCode> is also present.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

