
package Paws::IoT::DescribeThingType;
  use Moose;
  has ThingTypeName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingTypeName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeThingType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-types/{thingTypeName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeThingTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingType - Arguments for method DescribeThingType on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeThingType on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeThingType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeThingType.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeThingTypeResponse = $iot->DescribeThingType(
      ThingTypeName => 'MyThingTypeName',

    );

    # Results:
    my $ThingTypeArn        = $DescribeThingTypeResponse->ThingTypeArn;
    my $ThingTypeId         = $DescribeThingTypeResponse->ThingTypeId;
    my $ThingTypeMetadata   = $DescribeThingTypeResponse->ThingTypeMetadata;
    my $ThingTypeName       = $DescribeThingTypeResponse->ThingTypeName;
    my $ThingTypeProperties = $DescribeThingTypeResponse->ThingTypeProperties;

    # Returns a L<Paws::IoT::DescribeThingTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeThingType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingTypeName => Str

The name of the thing type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeThingType in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

