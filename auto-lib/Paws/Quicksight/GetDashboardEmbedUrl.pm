
package Paws::Quicksight::GetDashboardEmbedUrl;
  use Moose;
  has AdditionalDashboardIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'additional-dashboard-ids');
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DashboardId', required => 1);
  has IdentityType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'creds-type', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'namespace');
  has ResetDisabled => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'reset-disabled');
  has SessionLifetimeInMinutes => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'session-lifetime');
  has StatePersistenceEnabled => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'state-persistence-enabled');
  has UndoRedoDisabled => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'undo-redo-disabled');
  has UserArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'user-arn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDashboardEmbedUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::GetDashboardEmbedUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::GetDashboardEmbedUrl - Arguments for method GetDashboardEmbedUrl on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDashboardEmbedUrl on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method GetDashboardEmbedUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDashboardEmbedUrl.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $GetDashboardEmbedUrlResponse = $quicksight->GetDashboardEmbedUrl(
      AwsAccountId           => 'MyAwsAccountId',
      DashboardId            => 'MyRestrictiveResourceId',
      IdentityType           => 'IAM',
      AdditionalDashboardIds => [
        'MyRestrictiveResourceId', ...    # min: 1, max: 2048
      ],                                  # OPTIONAL
      Namespace                => 'MyNamespace',    # OPTIONAL
      ResetDisabled            => 1,                # OPTIONAL
      SessionLifetimeInMinutes => 1,                # OPTIONAL
      StatePersistenceEnabled  => 1,                # OPTIONAL
      UndoRedoDisabled         => 1,                # OPTIONAL
      UserArn                  => 'MyArn',          # OPTIONAL
    );

    # Results:
    my $EmbedUrl  = $GetDashboardEmbedUrlResponse->EmbedUrl;
    my $RequestId = $GetDashboardEmbedUrlResponse->RequestId;
    my $Status    = $GetDashboardEmbedUrlResponse->Status;

    # Returns a L<Paws::Quicksight::GetDashboardEmbedUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/GetDashboardEmbedUrl>

=head1 ATTRIBUTES


=head2 AdditionalDashboardIds => ArrayRef[Str|Undef]

A list of one or more dashboard IDs that you want to add to a session
that includes anonymous users. The C<IdentityType> parameter must be
set to C<ANONYMOUS> for this to work, because other identity types
authenticate as QuickSight or IAM users. For example, if you set
"C<--dashboard-id dash_id1 --dashboard-id dash_id2 dash_id3
identity-type ANONYMOUS>", the session can access all three dashboards.



=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account that contains the dashboard that you're
embedding.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard, also added to the AWS Identity and Access
Management (IAM) policy.



=head2 B<REQUIRED> IdentityType => Str

The authentication method that the user uses to sign in.

Valid values are: C<"IAM">, C<"QUICKSIGHT">, C<"ANONYMOUS">

=head2 Namespace => Str

The QuickSight namespace that contains the dashboard IDs in this
request. If you're not using a custom namespace, set this to
"C<default>".



=head2 ResetDisabled => Bool

Remove the reset button on the embedded dashboard. The default is
FALSE, which enables the reset button.



=head2 SessionLifetimeInMinutes => Int

How many minutes the session is valid. The session lifetime must be
15-600 minutes.



=head2 StatePersistenceEnabled => Bool

Adds persistence of state for the user session in an embedded
dashboard. Persistence applies to the sheet and the parameter settings.
These are control settings that the dashboard subscriber (QuickSight
reader) chooses while viewing the dashboard. If this is set to C<TRUE>,
the settings are the same when the subscriber reopens the same
dashboard URL. The state is stored in QuickSight, not in a browser
cookie. If this is set to FALSE, the state of the user session is not
persisted. The default is C<FALSE>.



=head2 UndoRedoDisabled => Bool

Remove the undo/redo button on the embedded dashboard. The default is
FALSE, which enables the undo/redo button.



=head2 UserArn => Str

The Amazon QuickSight user's Amazon Resource Name (ARN), for use with
C<QUICKSIGHT> identity type. You can use this for any Amazon QuickSight
users in your account (readers, authors, or admins) authenticated as
one of the following:

=over

=item *

Active Directory (AD) users or group members

=item *

Invited nonfederated users

=item *

IAM users and IAM role-based sessions authenticated through Federated
Single Sign-On using SAML, OpenID Connect, or IAM federation.

=back

Omit this parameter for users in the third group E<ndash> IAM users and
IAM role-based sessions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDashboardEmbedUrl in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

