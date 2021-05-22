
package Paws::GreengrassV2::ListCoreDevices;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has ThingGroupArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingGroupArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCoreDevices');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/coreDevices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::ListCoreDevicesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListCoreDevices - Arguments for method ListCoreDevices on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCoreDevices on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method ListCoreDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCoreDevices.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $ListCoreDevicesResponse = $greengrass->ListCoreDevices(
      MaxResults    => 1,                      # OPTIONAL
      NextToken     => 'MyNextTokenString',    # OPTIONAL
      Status        => 'HEALTHY',              # OPTIONAL
      ThingGroupArn => 'MyThingGroupARN',      # OPTIONAL
    );

    # Results:
    my $CoreDevices = $ListCoreDevicesResponse->CoreDevices;
    my $NextToken   = $ListCoreDevicesResponse->NextToken;

    # Returns a L<Paws::GreengrassV2::ListCoreDevicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListCoreDevices>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 Status => Str

The core device status by which to filter. If you specify this
parameter, the list includes only core devices that have this status.
Choose one of the following options:

=over

=item *

C<HEALTHY> E<ndash> The AWS IoT Greengrass Core software and all
components run on the core device without issue.

=item *

C<UNHEALTHY> E<ndash> The AWS IoT Greengrass Core software or a
component is in a failed state on the core device.

=back


Valid values are: C<"HEALTHY">, C<"UNHEALTHY">

=head2 ThingGroupArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the AWS IoT thing group by which to filter. If you specify this
parameter, the list includes only core devices that are members of this
thing group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCoreDevices in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

