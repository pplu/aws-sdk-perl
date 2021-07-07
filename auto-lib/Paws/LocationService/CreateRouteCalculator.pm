
package Paws::LocationService::CreateRouteCalculator;
  use Moose;
  has CalculatorName => (is => 'ro', isa => 'Str', required => 1);
  has DataSource => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRouteCalculator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routes/v0/calculators');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CreateRouteCalculatorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateRouteCalculator - Arguments for method CreateRouteCalculator on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRouteCalculator on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CreateRouteCalculator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRouteCalculator.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CreateRouteCalculatorResponse = $geo->CreateRouteCalculator(
      CalculatorName => 'MyResourceName',
      DataSource     => 'MyString',
      PricingPlan    => 'RequestBasedUsage',
      Description    => 'MyResourceDescription',    # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CalculatorArn  = $CreateRouteCalculatorResponse->CalculatorArn;
    my $CalculatorName = $CreateRouteCalculatorResponse->CalculatorName;
    my $CreateTime     = $CreateRouteCalculatorResponse->CreateTime;

    # Returns a L<Paws::LocationService::CreateRouteCalculatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CreateRouteCalculator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatorName => Str

The name of the route calculator resource.

Requirements:

=over

=item *

Can use alphanumeric characters (AE<ndash>Z, aE<ndash>z, 0E<ndash>9) ,
hyphens (-), periods (.), and underscores (_).

=item *

Must be a unique Route calculator resource name.

=item *

No spaces allowed. For example, C<ExampleRouteCalculator>.

=back




=head2 B<REQUIRED> DataSource => Str

Specifies the data provider of traffic and road network data.

This field is case-sensitive. Enter the valid values as shown. For
example, entering C<HERE> returns an error.

Valid Values: C<Esri> | C<Here>

For more information about data providers, see Amazon Location Service
data providers
(https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html).



=head2 Description => Str

The optional description for the route calculator resource.



=head2 B<REQUIRED> PricingPlan => Str

Specifies the pricing plan for your route calculator resource.

For additional details and restrictions on each pricing plan option,
see Amazon Location Service pricing
(https://aws.amazon.com/location/pricing/).

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">

=head2 Tags => L<Paws::LocationService::TagMap>

Applies one or more tags to the route calculator resource. A tag is a
key-value pair helps manage, identify, search, and filter your
resources by labelling them.

=over

=item *

For example: { C<"tag1" : "value1">, C<"tag2" : "value2">}

=back

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

This class forms part of L<Paws>, documenting arguments for method CreateRouteCalculator in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

