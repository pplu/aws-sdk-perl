
package Paws::IoTSiteWise::ListAccessPolicies;
  use Moose;
  has IamArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'iamArn');
  has IdentityId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'identityId');
  has IdentityType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'identityType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceId');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessPolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/access-policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::ListAccessPoliciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListAccessPolicies - Arguments for method ListAccessPolicies on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessPolicies on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method ListAccessPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessPolicies.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $ListAccessPoliciesResponse = $iotsitewise->ListAccessPolicies(
      IamArn       => 'MyARN',           # OPTIONAL
      IdentityId   => 'MyIdentityId',    # OPTIONAL
      IdentityType => 'USER',            # OPTIONAL
      MaxResults   => 1,                 # OPTIONAL
      NextToken    => 'MyNextToken',     # OPTIONAL
      ResourceId   => 'MyID',            # OPTIONAL
      ResourceType => 'PORTAL',          # OPTIONAL
    );

    # Results:
    my $AccessPolicySummaries =
      $ListAccessPoliciesResponse->AccessPolicySummaries;
    my $NextToken = $ListAccessPoliciesResponse->NextToken;

    # Returns a L<Paws::IoTSiteWise::ListAccessPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/ListAccessPolicies>

=head1 ATTRIBUTES


=head2 IamArn => Str

The ARN of the IAM user. For more information, see IAM ARNs
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html)
in the I<IAM User Guide>. This parameter is required if you specify
C<IAM> for C<identityType>.



=head2 IdentityId => Str

The ID of the identity. This parameter is required if you specify
C<USER> or C<GROUP> for C<identityType>.



=head2 IdentityType => Str

The type of identity (AWS SSO user, AWS SSO group, or IAM user). This
parameter is required if you specify C<identityId>.

Valid values are: C<"USER">, C<"GROUP">, C<"IAM">

=head2 MaxResults => Int

The maximum number of results to be returned per paginated request.

Default: 50



=head2 NextToken => Str

The token to be used for the next set of paginated results.



=head2 ResourceId => Str

The ID of the resource. This parameter is required if you specify
C<resourceType>.



=head2 ResourceType => Str

The type of resource (portal or project). This parameter is required if
you specify C<resourceId>.

Valid values are: C<"PORTAL">, C<"PROJECT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessPolicies in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

