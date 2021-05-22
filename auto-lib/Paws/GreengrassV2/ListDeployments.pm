
package Paws::GreengrassV2::ListDeployments;
  use Moose;
  has HistoryFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'historyFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeployments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::ListDeploymentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListDeployments - Arguments for method ListDeployments on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeployments on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method ListDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeployments.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $ListDeploymentsResponse = $greengrass->ListDeployments(
      HistoryFilter => 'ALL',                  # OPTIONAL
      MaxResults    => 1,                      # OPTIONAL
      NextToken     => 'MyNextTokenString',    # OPTIONAL
      TargetArn     => 'MyTargetARN',          # OPTIONAL
    );

    # Results:
    my $Deployments = $ListDeploymentsResponse->Deployments;
    my $NextToken   = $ListDeploymentsResponse->NextToken;

    # Returns a L<Paws::GreengrassV2::ListDeploymentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/ListDeployments>

=head1 ATTRIBUTES


=head2 HistoryFilter => Str

The filter for the list of deployments. Choose one of the following
options:

=over

=item *

C<ALL> E<ndash> The list includes all deployments.

=item *

C<LATEST_ONLY> E<ndash> The list includes only the latest revision of
each deployment.

=back

Default: C<LATEST_ONLY>

Valid values are: C<"ALL">, C<"LATEST_ONLY">

=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 TargetArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the target AWS IoT thing or thing group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeployments in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

