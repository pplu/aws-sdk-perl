
package Paws::LocationService::CreateMap;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::LocationService::MapConfiguration', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has MapName => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMap');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/maps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CreateMapResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateMap - Arguments for method CreateMap on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMap on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CreateMap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMap.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CreateMapResponse = $geo->CreateMap(
      Configuration => {
        Style => 'MyMapStyle',    # min: 1, max: 100

      },
      MapName     => 'MyResourceName',
      PricingPlan => 'RequestBasedUsage',
      Description => 'MyResourceDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreateTime = $CreateMapResponse->CreateTime;
    my $MapArn     = $CreateMapResponse->MapArn;
    my $MapName    = $CreateMapResponse->MapName;

    # Returns a L<Paws::LocationService::CreateMapResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CreateMap>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::LocationService::MapConfiguration>

Specifies the map style selected from an available data provider.



=head2 Description => Str

An optional description for the map resource.



=head2 B<REQUIRED> MapName => Str

The name for the map resource.

Requirements:

=over

=item *

Must contain only alphanumeric characters (AE<ndash>Z, aE<ndash>z,
0E<ndash>9), hyphens (-), periods (.), and underscores (_).

=item *

Must be a unique map resource name.

=item *

No spaces allowed. For example, C<ExampleMap>.

=back




=head2 B<REQUIRED> PricingPlan => Str

Specifies the pricing plan for your map resource.

For additional details and restrictions on each pricing plan option,
see the Amazon Location Service pricing page
(https://aws.amazon.com/location/pricing/).

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">

=head2 Tags => L<Paws::LocationService::TagMap>

Applies one or more tags to the map resource. A tag is a key-value pair
helps manage, identify, search, and filter your resources by labelling
them.

Format: C<"key" : "value">

Restrictions:

=over

=item *

Maximum 50 tags per resource

=item *

Each resource tag must be unique with a maximum of one value.

=item *

Maximum key length: 128 Unicode characters in UTF-8

=item *

Maximum value length: 256 Unicode characters in UTF-8

=item *

Can use alphanumeric characters (AE<ndash>Z, aE<ndash>z, 0E<ndash>9),
and the following characters: + - = . _ : / @.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMap in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

