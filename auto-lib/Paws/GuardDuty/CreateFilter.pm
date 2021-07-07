
package Paws::GuardDuty::CreateFilter;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'action');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FindingCriteria => (is => 'ro', isa => 'Paws::GuardDuty::FindingCriteria', traits => ['NameInRequest'], request_name => 'findingCriteria', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Rank => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'rank');
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFilter');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/filter');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateFilterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateFilter - Arguments for method CreateFilter on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFilter on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFilter.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateFilterResponse = $guardduty->CreateFilter(
      DetectorId      => 'MyDetectorId',
      FindingCriteria => {
        Criterion => {
          'MyString' => {
            Eq                 => [ 'MyString', ... ],    # OPTIONAL
            Equals             => [ 'MyString', ... ],    # OPTIONAL
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
      },
      Name        => 'MyFilterName',
      Action      => 'NOOP',                   # OPTIONAL
      ClientToken => 'MyClientToken',          # OPTIONAL
      Description => 'MyFilterDescription',    # OPTIONAL
      Rank        => 1,                        # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateFilterResponse->Name;

    # Returns a L<Paws::GuardDuty::CreateFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateFilter>

=head1 ATTRIBUTES


=head2 Action => Str

Specifies the action that is to be applied to the findings that match
the filter.

Valid values are: C<"NOOP">, C<"ARCHIVE">

=head2 ClientToken => Str

The idempotency token for the create request.



=head2 Description => Str

The description of the filter.



=head2 B<REQUIRED> DetectorId => Str

The ID of the detector belonging to the GuardDuty account that you want
to create a filter for.



=head2 B<REQUIRED> FindingCriteria => L<Paws::GuardDuty::FindingCriteria>

Represents the criteria to be used in the filter for querying findings.

You can only use the following attributes to query findings:

=over

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

resource.instanceDetails.outpostArn

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

service.action.awsApiCallAction.errorCode

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

service.action.networkConnectionAction.localIpDetails.ipAddressV4

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

When this attribute is set to TRUE, only archived findings are listed.
When it's set to FALSE, only unarchived findings are listed. When this
attribute is not set, all existing findings are listed.

=item *

service.resourceRole

=item *

severity

=item *

type

=item *

updatedAt

Type: ISO 8601 string format: YYYY-MM-DDTHH:MM:SS.SSSZ or
YYYY-MM-DDTHH:MM:SSZ depending on whether the value contains
milliseconds.

=back




=head2 B<REQUIRED> Name => Str

The name of the filter. Minimum length of 3. Maximum length of 64.
Valid characters include alphanumeric characters, dot (.), underscore
(_), and dash (-). Spaces are not allowed.



=head2 Rank => Int

Specifies the position of the filter in the list of current filters.
Also specifies the order in which this filter is applied to the
findings.



=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags to be added to a new filter resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFilter in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

