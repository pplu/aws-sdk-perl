
package Paws::GuardDuty::ListFindings;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingCriteria => (is => 'ro', isa => 'Paws::GuardDuty::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortCriteria => (is => 'ro', isa => 'Paws::GuardDuty::SortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/findings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::ListFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListFindings - Arguments for method ListFindings on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindings on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindings.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListFindingsResponse = $guardduty->ListFindings(
      DetectorId      => 'MyDetectorId',
      FindingCriteria => {
        Criterion => {
          'MyString' => {
            Eq     => [ 'MyString', ... ],    # OPTIONAL
            Equals => [ 'MyString', ... ],    # OPTIONAL
            GreaterThan        => 1,                      # OPTIONAL
            GreaterThanOrEqual => 1,                      # OPTIONAL
            Gt                 => 1,                      # OPTIONAL
            Gte                => 1,                      # OPTIONAL
            LessThan           => 1,                      # OPTIONAL
            LessThanOrEqual    => 1,                      # OPTIONAL
            Lt                 => 1,                      # OPTIONAL
            Lte                => 1,                      # OPTIONAL
            Neq                => [ 'MyString', ... ],    # OPTIONAL
            NotEquals          => [ 'MyString', ... ],    # OPTIONAL
          },
        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults   => 1,             # OPTIONAL
      NextToken    => 'MyString',    # OPTIONAL
      SortCriteria => {
        AttributeName => 'MyString',
        OrderBy       => 'ASC',        # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FindingIds = $ListFindingsResponse->FindingIds;
    my $NextToken  = $ListFindingsResponse->NextToken;

    # Returns a L<Paws::GuardDuty::ListFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that specifies the GuardDuty service whose
findings you want to list.



=head2 FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

Represents the criteria used for querying findings. Valid values
include:

=over

=item *

JSON field name

=item *

accountId

=item *

region

=item *

confidence

=item *

id

=item *

resource.accessKeyDetails.accessKeyId

=item *

resource.accessKeyDetails.principalId

=item *

resource.accessKeyDetails.userName

=item *

resource.accessKeyDetails.userType

=item *

resource.instanceDetails.iamInstanceProfile.id

=item *

resource.instanceDetails.imageId

=item *

resource.instanceDetails.instanceId

=item *

resource.instanceDetails.networkInterfaces.ipv6Addresses

=item *

resource.instanceDetails.networkInterfaces.privateIpAddresses.privateIpAddress

=item *

resource.instanceDetails.networkInterfaces.publicDnsName

=item *

resource.instanceDetails.networkInterfaces.publicIp

=item *

resource.instanceDetails.networkInterfaces.securityGroups.groupId

=item *

resource.instanceDetails.networkInterfaces.securityGroups.groupName

=item *

resource.instanceDetails.networkInterfaces.subnetId

=item *

resource.instanceDetails.networkInterfaces.vpcId

=item *

resource.instanceDetails.tags.key

=item *

resource.instanceDetails.tags.value

=item *

resource.resourceType

=item *

service.action.actionType

=item *

service.action.awsApiCallAction.api

=item *

service.action.awsApiCallAction.callerType

=item *

service.action.awsApiCallAction.remoteIpDetails.city.cityName

=item *

service.action.awsApiCallAction.remoteIpDetails.country.countryName

=item *

service.action.awsApiCallAction.remoteIpDetails.ipAddressV4

=item *

service.action.awsApiCallAction.remoteIpDetails.organization.asn

=item *

service.action.awsApiCallAction.remoteIpDetails.organization.asnOrg

=item *

service.action.awsApiCallAction.serviceName

=item *

service.action.dnsRequestAction.domain

=item *

service.action.networkConnectionAction.blocked

=item *

service.action.networkConnectionAction.connectionDirection

=item *

service.action.networkConnectionAction.localPortDetails.port

=item *

service.action.networkConnectionAction.protocol

=item *

service.action.networkConnectionAction.remoteIpDetails.city.cityName

=item *

service.action.networkConnectionAction.remoteIpDetails.country.countryName

=item *

service.action.networkConnectionAction.remoteIpDetails.ipAddressV4

=item *

service.action.networkConnectionAction.remoteIpDetails.organization.asn

=item *

service.action.networkConnectionAction.remoteIpDetails.organization.asnOrg

=item *

service.action.networkConnectionAction.remotePortDetails.port

=item *

service.additionalInfo.threatListName

=item *

service.archived

When this attribute is set to 'true', only archived findings are
listed. When it's set to 'false', only unarchived findings are listed.
When this attribute is not set, all existing findings are listed.

=item *

service.resourceRole

=item *

severity

=item *

type

=item *

updatedAt

Type: Timestamp in Unix Epoch millisecond format: 1486685375000

=back




=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 50. The maximum value is 50.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the list action. For
subsequent calls to the action fill nextToken in the request with the
value of NextToken from the previous response to continue listing data.



=head2 SortCriteria => L<Paws::GuardDuty::SortCriteria>

Represents the criteria used for sorting findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindings in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

