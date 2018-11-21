
package Paws::IoT::DescribeThing;
  use Moose;
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeThing');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeThingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThing - Arguments for method DescribeThing on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeThing on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeThing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeThing.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeThingResponse = $iot->DescribeThing(
      ThingName => 'MyThingName',

    );

    # Results:
    my $Attributes       = $DescribeThingResponse->Attributes;
    my $BillingGroupName = $DescribeThingResponse->BillingGroupName;
    my $DefaultClientId  = $DescribeThingResponse->DefaultClientId;
    my $ThingArn         = $DescribeThingResponse->ThingArn;
    my $ThingId          = $DescribeThingResponse->ThingId;
    my $ThingName        = $DescribeThingResponse->ThingName;
    my $ThingTypeName    = $DescribeThingResponse->ThingTypeName;
    my $Version          = $DescribeThingResponse->Version;

    # Returns a L<Paws::IoT::DescribeThingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeThing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingName => Str

The name of the thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeThing in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

