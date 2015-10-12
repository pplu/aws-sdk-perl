package Paws::CloudFront::GeoRestriction;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Str]');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
  has RestrictionType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GeoRestriction

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 Items => ArrayRef[Str]

  

A complex type that contains a Location element for each country in
which you want CloudFront either to distribute your content (whitelist)
or not distribute your content (blacklist). The Location element is a
two-letter, uppercase country code for a country that you want to
include in your blacklist or whitelist. Include one Location element
for each country. CloudFront and MaxMind both use ISO 3166 country
codes. For the current list of countries and the corresponding codes,
see ISO 3166-1-alpha-2 code on the International Organization for
Standardization website. You can also refer to the country list in the
CloudFront console, which includes both country names and codes.










=head2 B<REQUIRED> Quantity => Int

  

When geo restriction is enabled, this is the number of countries in
your whitelist or blacklist. Otherwise, when it is not enabled,
Quantity is 0, and you can omit Items.










=head2 B<REQUIRED> RestrictionType => Str

  

The method that you want to use to restrict distribution of your
content by country: - none: No geo restriction is enabled, meaning
access to content is not restricted by client geo location. -
blacklist: The Location elements specify the countries in which you do
not want CloudFront to distribute your content. - whitelist: The
Location elements specify the countries in which you want CloudFront to
distribute your content.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

