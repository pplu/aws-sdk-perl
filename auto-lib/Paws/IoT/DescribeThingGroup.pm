
package Paws::IoT::DescribeThingGroup;
  use Moose;
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeThingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/thing-groups/{thingGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeThingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeThingGroup - Arguments for method DescribeThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeThingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeThingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeThingGroupResponse = $iot->DescribeThingGroup(
      ThingGroupName => 'MyThingGroupName',

    );

    # Results:
    my $IndexName          = $DescribeThingGroupResponse->IndexName;
    my $QueryString        = $DescribeThingGroupResponse->QueryString;
    my $QueryVersion       = $DescribeThingGroupResponse->QueryVersion;
    my $Status             = $DescribeThingGroupResponse->Status;
    my $ThingGroupArn      = $DescribeThingGroupResponse->ThingGroupArn;
    my $ThingGroupId       = $DescribeThingGroupResponse->ThingGroupId;
    my $ThingGroupMetadata = $DescribeThingGroupResponse->ThingGroupMetadata;
    my $ThingGroupName     = $DescribeThingGroupResponse->ThingGroupName;
    my $ThingGroupProperties =
      $DescribeThingGroupResponse->ThingGroupProperties;
    my $Version = $DescribeThingGroupResponse->Version;

    # Returns a L<Paws::IoT::DescribeThingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeThingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingGroupName => Str

The name of the thing group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

