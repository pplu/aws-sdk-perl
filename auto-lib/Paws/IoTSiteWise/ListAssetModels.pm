
package Paws::IoTSiteWise::ListAssetModels;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssetModels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/asset-models');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListAssetModelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAssetModels - Arguments for method ListAssetModels on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssetModels on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListAssetModels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssetModels.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListAssetModelsResponse = $iotsitewise->ListAssetModels(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $AssetModelSummaries = $ListAssetModelsResponse->AssetModelSummaries;
    my $NextToken           = $ListAssetModelsResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListAssetModelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListAssetModels>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.

Default: 50



=head2 NextToken => Str

The token to be used for the next set of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssetModels in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

