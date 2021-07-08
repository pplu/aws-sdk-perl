
package Paws::LocationService::GetMapGlyphs;
  use Moose;
  has FontStack => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FontStack', required => 1);
  has FontUnicodeRange => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FontUnicodeRange', required => 1);
  has MapName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MapName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMapGlyphs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/maps/{MapName}/glyphs/{FontStack}/{FontUnicodeRange}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetMapGlyphsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetMapGlyphs - Arguments for method GetMapGlyphs on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMapGlyphs on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetMapGlyphs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMapGlyphs.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetMapGlyphsResponse = $geo->GetMapGlyphs(
      FontStack        => 'MyString',
      FontUnicodeRange => 'MyGetMapGlyphsRequestFontUnicodeRangeString',
      MapName          => 'MyResourceName',

    );

    # Results:
    my $Blob        = $GetMapGlyphsResponse->Blob;
    my $ContentType = $GetMapGlyphsResponse->ContentType;

    # Returns a L<Paws::LocationService::GetMapGlyphsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetMapGlyphs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FontStack => Str

A comma-separated list of fonts to load glyphs from in order of
preference.. For example, C<Noto Sans, Arial Unicode>.



=head2 B<REQUIRED> FontUnicodeRange => Str

A Unicode range of characters to download glyphs for. Each response
will contain 256 characters. For example, 0E<ndash>255 includes all
characters from range C<U+0000> to C<00FF>. Must be aligned to
multiples of 256.



=head2 B<REQUIRED> MapName => Str

The map resource associated with the glyph le.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMapGlyphs in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

