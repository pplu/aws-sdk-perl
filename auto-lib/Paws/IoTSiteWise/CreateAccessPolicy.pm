
package Paws::IoTSiteWise::CreateAccessPolicy;
  use Moose;
  has AccessPolicyIdentity => (is => 'ro', isa => 'Paws::IoTSiteWise::Identity', traits => ['NameInRequest'], request_name => 'accessPolicyIdentity', required => 1);
  has AccessPolicyPermission => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessPolicyPermission', required => 1);
  has AccessPolicyResource => (is => 'ro', isa => 'Paws::IoTSiteWise::Resource', traits => ['NameInRequest'], request_name => 'accessPolicyResource', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Tags => (is => 'ro', isa => 'Paws::IoTSiteWise::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/access-policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::CreateAccessPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::CreateAccessPolicy - Arguments for method CreateAccessPolicy on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessPolicy on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method CreateAccessPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessPolicy.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $CreateAccessPolicyResponse = $iotsitewise->CreateAccessPolicy(
      AccessPolicyIdentity => {
        Group => {
          Id => 'MyIdentityId',    # min: 1, max: 256

        },    # OPTIONAL
        IamRole => {
          Arn => 'MyARN',    # min: 1, max: 1600

        },    # OPTIONAL
        IamUser => {
          Arn => 'MyARN',    # min: 1, max: 1600

        },    # OPTIONAL
        User => {
          Id => 'MyIdentityId',    # min: 1, max: 256

        },    # OPTIONAL
      },
      AccessPolicyPermission => 'ADMINISTRATOR',
      AccessPolicyResource   => {
        Portal => {
          Id => 'MyID',    # min: 36, max: 36

        },    # OPTIONAL
        Project => {
          Id => 'MyID',    # min: 36, max: 36

        },    # OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $AccessPolicyArn = $CreateAccessPolicyResponse->AccessPolicyArn;
    my $AccessPolicyId  = $CreateAccessPolicyResponse->AccessPolicyId;

    # Returns a L<Paws::IoTSiteWise::CreateAccessPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/CreateAccessPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPolicyIdentity => L<Paws::IoTSiteWise::Identity>

The identity for this access policy. Choose an AWS SSO user, an AWS SSO
group, or an IAM user.



=head2 B<REQUIRED> AccessPolicyPermission => Str

The permission level for this access policy. Note that a project
C<ADMINISTRATOR> is also known as a project owner.

Valid values are: C<"ADMINISTRATOR">, C<"VIEWER">

=head2 B<REQUIRED> AccessPolicyResource => L<Paws::IoTSiteWise::Resource>

The AWS IoT SiteWise Monitor resource for this access policy. Choose
either a portal or a project.



=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 Tags => L<Paws::IoTSiteWise::TagMap>

A list of key-value pairs that contain metadata for the access policy.
For more information, see Tagging your AWS IoT SiteWise resources
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html)
in the I<AWS IoT SiteWise User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessPolicy in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

