
package Paws::LocationService::GetMapSprites;
  use Moose;
  has FileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FileName', required => 1);
  has MapName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MapName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMapSprites');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/maps/{MapName}/sprites/{FileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::GetMapSpritesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::GetMapSprites - Arguments for method GetMapSprites on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMapSprites on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method GetMapSprites.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMapSprites.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $GetMapSpritesResponse = $geo->GetMapSprites(
      FileName => 'MyGetMapSpritesRequestFileNameString',
      MapName  => 'MyResourceName',

    );

    # Results:
    my $Blob        = $GetMapSpritesResponse->Blob;
    my $ContentType = $GetMapSpritesResponse->ContentType;

    # Returns a L<Paws::LocationService::GetMapSpritesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/GetMapSprites>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileName => Str

The name of the sprite le. Use the following le names for the sprite
sheet:

=over

=item *

C<sprites.png>

=item *

C<sprites@2x.png> for high pixel density displays

=back

For the JSON document contain image offsets. Use the following le
names:

=over

=item *

C<sprites.json>

=item *

C<sprites@2x.json> for high pixel density displays

=back




=head2 B<REQUIRED> MapName => Str

The map resource associated with the sprite le.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMapSprites in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

