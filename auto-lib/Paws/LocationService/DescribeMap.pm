
package Paws::LocationService::DescribeMap;
  use Moose;
  has MapName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MapName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMap');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/maps/v0/maps/{MapName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::DescribeMapResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeMap - Arguments for method DescribeMap on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMap on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method DescribeMap.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMap.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $DescribeMapResponse = $geo->DescribeMap(
      MapName => 'MyResourceName',

    );

    # Results:
    my $Configuration = $DescribeMapResponse->Configuration;
    my $CreateTime    = $DescribeMapResponse->CreateTime;
    my $DataSource    = $DescribeMapResponse->DataSource;
    my $Description   = $DescribeMapResponse->Description;
    my $MapArn        = $DescribeMapResponse->MapArn;
    my $MapName       = $DescribeMapResponse->MapName;
    my $PricingPlan   = $DescribeMapResponse->PricingPlan;
    my $Tags          = $DescribeMapResponse->Tags;
    my $UpdateTime    = $DescribeMapResponse->UpdateTime;

    # Returns a L<Paws::LocationService::DescribeMapResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/DescribeMap>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MapName => Str

The name of the map resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMap in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

