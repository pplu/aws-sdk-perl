
package Paws::LocationService::DescribePlaceIndex;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IndexName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePlaceIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes/{IndexName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::DescribePlaceIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribePlaceIndex - Arguments for method DescribePlaceIndex on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePlaceIndex on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method DescribePlaceIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePlaceIndex.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $DescribePlaceIndexResponse = $geo->DescribePlaceIndex(
      IndexName => 'MyResourceName',

    );

    # Results:
    my $CreateTime = $DescribePlaceIndexResponse->CreateTime;
    my $DataSource = $DescribePlaceIndexResponse->DataSource;
    my $DataSourceConfiguration =
      $DescribePlaceIndexResponse->DataSourceConfiguration;
    my $Description = $DescribePlaceIndexResponse->Description;
    my $IndexArn    = $DescribePlaceIndexResponse->IndexArn;
    my $IndexName   = $DescribePlaceIndexResponse->IndexName;
    my $PricingPlan = $DescribePlaceIndexResponse->PricingPlan;
    my $Tags        = $DescribePlaceIndexResponse->Tags;
    my $UpdateTime  = $DescribePlaceIndexResponse->UpdateTime;

    # Returns a L<Paws::LocationService::DescribePlaceIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/DescribePlaceIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

The name of the place index resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePlaceIndex in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

