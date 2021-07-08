
package Paws::IoTEvents::ListInputRoutings;
  use Moose;
  has InputIdentifier => (is => 'ro', isa => 'Paws::IoTEvents::InputIdentifier', traits => ['NameInRequest'], request_name => 'inputIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInputRoutings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/input-routings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTEvents::ListInputRoutingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::ListInputRoutings - Arguments for method ListInputRoutings on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInputRoutings on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method ListInputRoutings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInputRoutings.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $ListInputRoutingsResponse = $iotevents->ListInputRoutings(
      InputIdentifier => {
        IotEventsInputIdentifier => {
          InputName => 'MyInputName',    # min: 1, max: 128

        },    # OPTIONAL
        IotSiteWiseInputIdentifier => {
          IotSiteWiseAssetModelPropertyIdentifier => {
            AssetModelId => 'MyAssetModelId',
            PropertyId   => 'MyAssetPropertyId',

          },    # OPTIONAL
        },    # OPTIONAL
      },
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListInputRoutingsResponse->NextToken;
    my $RoutedResources = $ListInputRoutingsResponse->RoutedResources;

    # Returns a L<Paws::IoTEvents::ListInputRoutingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/ListInputRoutings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputIdentifier => L<Paws::IoTEvents::InputIdentifier>

The identifer of the routed input.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

The token that you can use to return the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInputRoutings in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

