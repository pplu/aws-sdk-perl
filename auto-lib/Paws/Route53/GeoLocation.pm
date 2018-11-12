package Paws::Route53::GeoLocation;
  use Moose;
  has ContinentCode => (is => 'ro', isa => 'Str');
  has CountryCode => (is => 'ro', isa => 'Str');
  has SubdivisionCode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GeoLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::GeoLocation object:

  $service_obj->Method(Att1 => { ContinentCode => $value, ..., SubdivisionCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::GeoLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->ContinentCode

=head1 DESCRIPTION

A complex type that contains information about a geographic location.

=head1 ATTRIBUTES


=head2 ContinentCode => Str

  The two-letter code for the continent.

Valid values: C<AF> | C<AN> | C<AS> | C<EU> | C<OC> | C<NA> | C<SA>

Constraint: Specifying C<ContinentCode> with either C<CountryCode> or
C<SubdivisionCode> returns an C<InvalidInput> error.


=head2 CountryCode => Str

  The two-letter code for the country.


=head2 SubdivisionCode => Str

  The code for the subdivision. Route 53 currently supports only states
in the United States.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

