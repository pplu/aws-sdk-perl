
package Paws::IoT::ListAuditSuppressions;
  use Moose;
  has AscendingOrder => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'ascendingOrder');
  has CheckName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checkName');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceIdentifier => (is => 'ro', isa => 'Paws::IoT::ResourceIdentifier', traits => ['NameInRequest'], request_name => 'resourceIdentifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAuditSuppressions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/suppressions/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListAuditSuppressionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuditSuppressions - Arguments for method ListAuditSuppressions on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAuditSuppressions on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListAuditSuppressions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAuditSuppressions.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListAuditSuppressionsResponse = $iot->ListAuditSuppressions(
      AscendingOrder     => 1,                     # OPTIONAL
      CheckName          => 'MyAuditCheckName',    # OPTIONAL
      MaxResults         => 1,                     # OPTIONAL
      NextToken          => 'MyNextToken',         # OPTIONAL
      ResourceIdentifier => {
        Account         => 'MyAwsAccountId',       # min: 12, max: 12; OPTIONAL
        CaCertificateId => 'MyCertificateId',      # min: 64, max: 64; OPTIONAL
        ClientId        => 'MyClientId',           # OPTIONAL
        CognitoIdentityPoolId => 'MyCognitoIdentityPoolId',    # OPTIONAL
        DeviceCertificateId => 'MyCertificateId', # min: 64, max: 64; OPTIONAL
        IamRoleArn          => 'MyRoleArn',       # min: 20, max: 2048; OPTIONAL
        PolicyVersionIdentifier => {
          PolicyName      => 'MyPolicyName',        # min: 1, max: 128; OPTIONAL
          PolicyVersionId => 'MyPolicyVersionId',   # OPTIONAL
        },    # OPTIONAL
        RoleAliasArn => 'MyRoleAliasArn',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListAuditSuppressionsResponse->NextToken;
    my $Suppressions = $ListAuditSuppressionsResponse->Suppressions;

    # Returns a L<Paws::IoT::ListAuditSuppressionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListAuditSuppressions>

=head1 ATTRIBUTES


=head2 AscendingOrder => Bool

Determines whether suppressions are listed in ascending order by
expiration date or not. If parameter isn't provided,
C<ascendingOrder=true>.



=head2 CheckName => Str





=head2 MaxResults => Int

The maximum number of results to return at one time. The default is 25.



=head2 NextToken => Str

The token for the next set of results.



=head2 ResourceIdentifier => L<Paws::IoT::ResourceIdentifier>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAuditSuppressions in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

