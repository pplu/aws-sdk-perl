package Paws::CloudFront::GeoRestriction;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Location', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
  has RestrictionType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GeoRestriction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::GeoRestriction object:

  $service_obj->Method(Att1 => { Items => $value, ..., RestrictionType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::GeoRestriction object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that controls the countries in which your content is
distributed. CloudFront determines the location of your users using
C<MaxMind> GeoIP databases.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[Str|Undef]

  A complex type that contains a C<Location> element for each country in
which you want CloudFront either to distribute your content
(C<whitelist>) or not distribute your content (C<blacklist>).

The C<Location> element is a two-letter, uppercase country code for a
country that you want to include in your C<blacklist> or C<whitelist>.
Include one C<Location> element for each country.

CloudFront and C<MaxMind> both use C<ISO 3166> country codes. For the
current list of countries and the corresponding codes, see C<ISO
3166-1-alpha-2> code on the I<International Organization for
Standardization> website. You can also refer to the country list on the
CloudFront console, which includes both country names and codes.


=head2 B<REQUIRED> Quantity => Int

  When geo restriction is C<enabled>, this is the number of countries in
your C<whitelist> or C<blacklist>. Otherwise, when it is not enabled,
C<Quantity> is C<0>, and you can omit C<Items>.


=head2 B<REQUIRED> RestrictionType => Str

  The method that you want to use to restrict distribution of your
content by country:

=over

=item *

C<none>: No geo restriction is enabled, meaning access to content is
not restricted by client geo location.

=item *

C<blacklist>: The C<Location> elements specify the countries in which
you don't want CloudFront to distribute your content.

=item *

C<whitelist>: The C<Location> elements specify the countries in which
you want CloudFront to distribute your content.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

