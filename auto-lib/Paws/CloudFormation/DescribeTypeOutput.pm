
package Paws::CloudFormation::DescribeTypeOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AutoUpdate => (is => 'ro', isa => 'Bool');
  has ConfigurationSchema => (is => 'ro', isa => 'Str');
  has DefaultVersionId => (is => 'ro', isa => 'Str');
  has DeprecatedStatus => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DocumentationUrl => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has IsActivated => (is => 'ro', isa => 'Bool');
  has IsDefaultVersion => (is => 'ro', isa => 'Bool');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has LatestPublicVersion => (is => 'ro', isa => 'Str');
  has LoggingConfig => (is => 'ro', isa => 'Paws::CloudFormation::LoggingConfig');
  has OriginalTypeArn => (is => 'ro', isa => 'Str');
  has OriginalTypeName => (is => 'ro', isa => 'Str');
  has ProvisioningType => (is => 'ro', isa => 'Str');
  has PublicVersionNumber => (is => 'ro', isa => 'Str');
  has PublisherId => (is => 'ro', isa => 'Str');
  has RequiredActivatedTypes => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::RequiredActivatedType]');
  has Schema => (is => 'ro', isa => 'Str');
  has SourceUrl => (is => 'ro', isa => 'Str');
  has TimeCreated => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');
  has TypeTestsStatus => (is => 'ro', isa => 'Str');
  has TypeTestsStatusDescription => (is => 'ro', isa => 'Str');
  has Visibility => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeTypeOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the extension.


=head2 AutoUpdate => Bool

Whether CloudFormation automatically updates the extension in this
account and region when a new I<minor> version is published by the
extension publisher. Major versions released by the publisher must be
manually updated. For more information, see Activating public
extensions for use in your account in the I<AWS CloudFormation User
Guide>.


=head2 ConfigurationSchema => Str

A JSON string that represent the current configuration data for the
extension in this account and region.

To set the configuration data for an extension, use
SetTypeConfiguration
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html).
For more information, see Configuring extensions at the account level
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration)
in the I<CloudFormation User Guide>.


=head2 DefaultVersionId => Str

The ID of the default version of the extension. The default version is
used when the extension version is not specified.

This applies only to private extensions you have registered in your
account. For public extensions, both those provided by Amazon and
published by third parties, CloudFormation returns C<null>. For more
information, see RegisterType
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).

To set the default version of an extension, use C<
SetTypeDefaultVersion >.


=head2 DeprecatedStatus => Str

The deprecation status of the extension version.

Valid values include:

=over

=item *

C<LIVE>: The extension is activated or registered and can be used in
CloudFormation operations, dependent on its provisioning behavior and
visibility scope.

=item *

C<DEPRECATED>: The extension has been deactivated or deregistered and
can no longer be used in CloudFormation operations.

=back

For public third-party extensions, CloudFormation returns C<null>.

Valid values are: C<"LIVE">, C<"DEPRECATED">
=head2 Description => Str

The description of the extension.


=head2 DocumentationUrl => Str

The URL of a page providing detailed documentation for this extension.


=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM execution role used to
register the extension. This applies only to private extensions you
have registered in your account. For more information, see RegisterType
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).

If the registered extension calls any AWS APIs, you must create an I<
IAM execution role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) > that
includes the necessary permissions to call those AWS APIs, and
provision that execution role in your account. CloudFormation then
assumes that execution role to provide your extension with the
appropriate credentials.


=head2 IsActivated => Bool

Whether or not the extension is activated in the account and region.

This only applies to public third-party extensions. For all other
extensions, CloudFormation returns C<null>.


=head2 IsDefaultVersion => Bool

Whether the specified extension version is set as the default version.

This applies only to private extensions you have registered in your
account, and extensions published by Amazon. For public third-party
extensions, whether or not they are activated in your account,
CloudFormation returns C<null>.


=head2 LastUpdated => Str

When the specified extension version was registered. This applies only
to:

=over

=item *

Private extensions you have registered in your account. For more
information, see RegisterType
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).

=item *

Public extensions you have activated in your account with auto-update
specified. For more information, see ActivateType
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html).

=back



=head2 LatestPublicVersion => Str

The latest version of a public extension I<that is available> for use.

This only applies if you specify a public extension, and you do not
specify a version. For all other requests, CloudFormation returns
C<null>.


=head2 LoggingConfig => L<Paws::CloudFormation::LoggingConfig>

Contains logging configuration information for private extensions. This
applies only to private extensions you have registered in your account.
For public extensions, both those provided by Amazon and published by
third parties, CloudFormation returns C<null>. For more information,
see RegisterType
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html).


=head2 OriginalTypeArn => Str

For public extensions that have been activated for this account and
region, the Amazon Resource Name (ARN) of the public extension.


=head2 OriginalTypeName => Str

For public extensions that have been activated for this account and
region, the type name of the public extension.

If you specified a C<TypeNameAlias> when enabling the extension in this
account and region, CloudFormation treats that alias as the extension's
type name within the account and region, not the type name of the
public extension. For more information, see Specifying aliases to refer
to extensions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html#registry-public-enable-alias)
in the I<CloudFormation User Guide>.


=head2 ProvisioningType => Str

For resource type extensions, the provisioning behavior of the resource
type. AWS CloudFormation determines the provisioning type during
registration, based on the types of handlers in the schema handler
package submitted.

Valid values include:

=over

=item *

C<FULLY_MUTABLE>: The resource type includes an update handler to
process updates to the type during stack update operations.

=item *

C<IMMUTABLE>: The resource type does not include an update handler, so
the type cannot be updated and must instead be replaced during stack
update operations.

=item *

C<NON_PROVISIONABLE>: The resource type does not include all of the
following handlers, and therefore cannot actually be provisioned.

=over

=item *

create

=item *

read

=item *

delete

=back

=back


Valid values are: C<"NON_PROVISIONABLE">, C<"IMMUTABLE">, C<"FULLY_MUTABLE">
=head2 PublicVersionNumber => Str

The version number of a public third-party extension.

This applies only if you specify a public extension you have activated
in your account, or specify a public extension without specifying a
version. For all other extensions, CloudFormation returns C<null>.


=head2 PublisherId => Str

The publisher ID of the extension publisher.

This applies only to public third-party extensions. For private
registered extensions, and extensions provided by Amazon,
CloudFormation returns C<null>.


=head2 RequiredActivatedTypes => ArrayRef[L<Paws::CloudFormation::RequiredActivatedType>]

For extensions that are modules, the public third-party extensions that
must be activated in your account in order for the module itself to be
activated.


=head2 Schema => Str

The schema that defines the extension.

For more information on extension schemas, see Resource Provider Schema
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html)
in the I<CloudFormation CLI User Guide>.


=head2 SourceUrl => Str

The URL of the source code for the extension.


=head2 TimeCreated => Str

When the specified private extension version was registered or
activated in your account.


=head2 Type => Str

The kind of extension.

Valid values are: C<"RESOURCE">, C<"MODULE">
=head2 TypeName => Str

The name of the extension.

If the extension is a public third-party type you have activated with a
type name alias, CloudFormation returns the type name alias. For more
information, see ActivateType
(https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html).


=head2 TypeTestsStatus => Str

The contract test status of the registered extension version. To return
the extension test status of a specifc extension version, you must
specify C<VersionId>.

This applies only to registered private extension versions.
CloudFormation does not return this information for public extensions,
whether or not they are activated in your account.

=over

=item *

C<PASSED>: The extension has passed all its contract tests.

An extension must have a test status of C<PASSED> before it can be
published. For more information, see Publishing extensions to make them
available for public use
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html)
in the I<CloudFormation Command Line Interface User Guide>.

=item *

C<FAILED>: The extension has failed one or more contract tests.

=item *

C<IN_PROGRESS>: Contract tests are currently being performed on the
extension.

=item *

C<NOT_TESTED>: Contract tests have not been performed on the extension.

=back


Valid values are: C<"PASSED">, C<"FAILED">, C<"IN_PROGRESS">, C<"NOT_TESTED">
=head2 TypeTestsStatusDescription => Str

The description of the test status. To return the extension test status
of a specifc extension version, you must specify C<VersionId>.

This applies only to registered private extension versions.
CloudFormation does not return this information for public extensions,
whether or not they are activated in your account.


=head2 Visibility => Str

The scope at which the extension is visible and usable in
CloudFormation operations.

Valid values include:

=over

=item *

C<PRIVATE>: The extension is only visible and usable within the account
in which it is registered. AWS CloudFormation marks any extensions you
register as C<PRIVATE>.

=item *

C<PUBLIC>: The extension is publically visible and usable within any
Amazon account.

=back


Valid values are: C<"PUBLIC">, C<"PRIVATE">
=head2 _request_id => Str


=cut

