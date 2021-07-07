
package Paws::Kendra::CreateIndex;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Edition => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::Kendra::ServerSideEncryptionConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Tag]');
  has UserContextPolicy => (is => 'ro', isa => 'Str');
  has UserTokenConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::UserTokenConfiguration]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIndex');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateIndexResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateIndex - Arguments for method CreateIndex on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIndex on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIndex.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateIndexResponse = $kendra->CreateIndex(
      Name                              => 'MyIndexName',
      RoleArn                           => 'MyRoleArn',
      ClientToken                       => 'MyClientTokenName',    # OPTIONAL
      Description                       => 'MyDescription',        # OPTIONAL
      Edition                           => 'DEVELOPER_EDITION',    # OPTIONAL
      ServerSideEncryptionConfiguration => {
        KmsKeyId => 'MyKmsKeyId',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      UserContextPolicy       => 'ATTRIBUTE_FILTER',    # OPTIONAL
      UserTokenConfigurations => [
        {
          JsonTokenTypeConfiguration => {
            GroupAttributeField    => 'MyString',    # min: 1, max: 2048
            UserNameAttributeField => 'MyString',    # min: 1, max: 2048

          },    # OPTIONAL
          JwtTokenTypeConfiguration => {
            KeyLocation         => 'URL',          # values: URL, SECRET_MANAGER
            ClaimRegex          => 'MyClaimRegex', # min: 1, max: 100; OPTIONAL
            GroupAttributeField =>
              'MyGroupAttributeField',             # min: 1, max: 100; OPTIONAL
            Issuer                 => 'MyIssuer',  # min: 1, max: 65; OPTIONAL
            SecretManagerArn       => 'MyRoleArn', # min: 1, max: 1284
            URL                    => 'MyUrl',     # min: 1, max: 2048; OPTIONAL
            UserNameAttributeField =>
              'MyUserNameAttributeField',          # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Id = $CreateIndexResponse->Id;

    # Returns a L<Paws::Kendra::CreateIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateIndex>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create an index.
Multiple calls to the C<CreateIndex> operation with the same client
token will create only one index.



=head2 Description => Str

A description for the index.



=head2 Edition => Str

The Amazon Kendra edition to use for the index. Choose
C<DEVELOPER_EDITION> for indexes intended for development, testing, or
proof of concept. Use C<ENTERPRISE_EDITION> for your production
databases. Once you set the edition for an index, it can't be changed.

The C<Edition> parameter is optional. If you don't supply a value, the
default is C<ENTERPRISE_EDITION>.

Valid values are: C<"DEVELOPER_EDITION">, C<"ENTERPRISE_EDITION">

=head2 B<REQUIRED> Name => Str

The name for the new index.



=head2 B<REQUIRED> RoleArn => Str

An AWS Identity and Access Management (IAM) role that gives Amazon
Kendra permissions to access your Amazon CloudWatch logs and metrics.
This is also the role used when you use the C<BatchPutDocument>
operation to index documents from an Amazon S3 bucket.



=head2 ServerSideEncryptionConfiguration => L<Paws::Kendra::ServerSideEncryptionConfiguration>

The identifier of the AWS KMS customer managed key (CMK) to use to
encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support
asymmetric CMKs.



=head2 Tags => ArrayRef[L<Paws::Kendra::Tag>]

A list of key-value pairs that identify the index. You can use the tags
to identify and organize your resources and to control access to
resources.



=head2 UserContextPolicy => Str

The user context policy.

=over

=item ATTRIBUTE_FILTER

All indexed content is searchable and displayable for all users. If
there is an access control list, it is ignored. You can filter on user
and group attributes.

=item USER_TOKEN

Enables SSO and token-based user access control. All documents with no
access control and all documents accessible to the user will be
searchable and displayable.

=back


Valid values are: C<"ATTRIBUTE_FILTER">, C<"USER_TOKEN">

=head2 UserTokenConfigurations => ArrayRef[L<Paws::Kendra::UserTokenConfiguration>]

The user token configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIndex in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

