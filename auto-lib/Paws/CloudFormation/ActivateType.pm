
package Paws::CloudFormation::ActivateType;
  use Moose;
  has AutoUpdate => (is => 'ro', isa => 'Bool');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has LoggingConfig => (is => 'ro', isa => 'Paws::CloudFormation::LoggingConfig');
  has MajorVersion => (is => 'ro', isa => 'Int');
  has PublicTypeArn => (is => 'ro', isa => 'Str');
  has PublisherId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str');
  has TypeNameAlias => (is => 'ro', isa => 'Str');
  has VersionBump => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ActivateTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ActivateTypeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ActivateType - Arguments for method ActivateType on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivateType on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ActivateType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivateType.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ActivateTypeOutput = $cloudformation->ActivateType(
      AutoUpdate       => 1,              # OPTIONAL
      ExecutionRoleArn => 'MyRoleArn',    # OPTIONAL
      LoggingConfig    => {
        LogGroupName => 'MyLogGroupName',    # min: 1, max: 512
        LogRoleArn   => 'MyRoleArn',         # min: 1, max: 256

      },    # OPTIONAL
      MajorVersion  => 1,                        # OPTIONAL
      PublicTypeArn => 'MyThirdPartyTypeArn',    # OPTIONAL
      PublisherId   => 'MyPublisherId',          # OPTIONAL
      Type          => 'RESOURCE',               # OPTIONAL
      TypeName      => 'MyTypeName',             # OPTIONAL
      TypeNameAlias => 'MyTypeName',             # OPTIONAL
      VersionBump   => 'MAJOR',                  # OPTIONAL
    );

    # Results:
    my $Arn = $ActivateTypeOutput->Arn;

    # Returns a L<Paws::CloudFormation::ActivateTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ActivateType>

=head1 ATTRIBUTES


=head2 AutoUpdate => Bool

Whether to automatically update the extension in this account and
region when a new I<minor> version is published by the extension
publisher. Major versions released by the publisher must be manually
updated.

The default is C<true>.



=head2 ExecutionRoleArn => Str

The name of the IAM execution role to use to activate the extension.



=head2 LoggingConfig => L<Paws::CloudFormation::LoggingConfig>





=head2 MajorVersion => Int

The major version of this extension you want to activate, if multiple
major versions are available. The default is the latest major version.
CloudFormation uses the latest available I<minor> version of the major
version selected.

You can specify C<MajorVersion> or C<VersionBump>, but not both.



=head2 PublicTypeArn => Str

The Amazon Resource Number (ARN) of the public extension.

Conditional: You must specify C<PublicTypeArn>, or C<TypeName>,
C<Type>, and C<PublisherId>.



=head2 PublisherId => Str

The ID of the extension publisher.

Conditional: You must specify C<PublicTypeArn>, or C<TypeName>,
C<Type>, and C<PublisherId>.



=head2 Type => Str

The extension type.

Conditional: You must specify C<PublicTypeArn>, or C<TypeName>,
C<Type>, and C<PublisherId>.

Valid values are: C<"RESOURCE">, C<"MODULE">

=head2 TypeName => Str

The name of the extension.

Conditional: You must specify C<PublicTypeArn>, or C<TypeName>,
C<Type>, and C<PublisherId>.



=head2 TypeNameAlias => Str

An alias to assign to the public extension, in this account and region.
If you specify an alias for the extension, CloudFormation treats the
alias as the extension type name within this account and region. You
must use the alias to refer to the extension in your templates, API
calls, and CloudFormation console.

An extension alias must be unique within a given account and region.
You can activate the same public resource multiple times in the same
account and region, using different type name aliases.



=head2 VersionBump => Str

Manually updates a previously-activated type to a new major or minor
version, if available. You can also use this parameter to update the
value of C<AutoUpdate>.

=over

=item *

C<MAJOR>: CloudFormation updates the extension to the newest major
version, if one is available.

=item *

C<MINOR>: CloudFormation updates the extension to the newest minor
version, if one is available.

=back


Valid values are: C<"MAJOR">, C<"MINOR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivateType in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

