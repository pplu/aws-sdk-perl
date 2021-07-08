
package Paws::SageMaker::CreateFeatureGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EventTimeFeatureName => (is => 'ro', isa => 'Str', required => 1);
  has FeatureDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::FeatureDefinition]', required => 1);
  has FeatureGroupName => (is => 'ro', isa => 'Str', required => 1);
  has OfflineStoreConfig => (is => 'ro', isa => 'Paws::SageMaker::OfflineStoreConfig');
  has OnlineStoreConfig => (is => 'ro', isa => 'Paws::SageMaker::OnlineStoreConfig');
  has RecordIdentifierFeatureName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFeatureGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateFeatureGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateFeatureGroup - Arguments for method CreateFeatureGroup on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFeatureGroup on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateFeatureGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFeatureGroup.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateFeatureGroupResponse = $api . sagemaker->CreateFeatureGroup(
      EventTimeFeatureName => 'MyFeatureName',
      FeatureDefinitions   => [
        {
          FeatureName => 'MyFeatureName',    # min: 1, max: 64
          FeatureType =>
            'Integral',    # values: Integral, Fractional, String; OPTIONAL
        },
        ...
      ],
      FeatureGroupName            => 'MyFeatureGroupName',
      RecordIdentifierFeatureName => 'MyFeatureName',
      Description                 => 'MyDescription',        # OPTIONAL
      OfflineStoreConfig          => {
        S3StorageConfig => {
          S3Uri               => 'MyS3Uri',       # max: 1024
          KmsKeyId            => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          ResolvedOutputS3Uri => 'MyS3Uri',       # max: 1024
        },
        DataCatalogConfig => {
          Catalog   => 'MyCatalog',               # min: 1, max: 255
          Database  => 'MyDatabase',              # min: 1, max: 255
          TableName => 'MyTableName',             # min: 1, max: 255

        },    # OPTIONAL
        DisableGlueTableCreation => 1,    # OPTIONAL
      },    # OPTIONAL
      OnlineStoreConfig => {
        EnableOnlineStore => 1,    # OPTIONAL
        SecurityConfig    => {
          KmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
      Tags    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $FeatureGroupArn = $CreateFeatureGroupResponse->FeatureGroupArn;

    # Returns a L<Paws::SageMaker::CreateFeatureGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateFeatureGroup>

=head1 ATTRIBUTES


=head2 Description => Str

A free-form description of a C<FeatureGroup>.



=head2 B<REQUIRED> EventTimeFeatureName => Str

The name of the feature that stores the C<EventTime> of a C<Record> in
a C<FeatureGroup>.

An C<EventTime> is a point in time when a new event occurs that
corresponds to the creation or update of a C<Record> in a
C<FeatureGroup>. All C<Records> in the C<FeatureGroup> must have a
corresponding C<EventTime>.

An C<EventTime> can be a C<String> or C<Fractional>.

=over

=item *

C<Fractional>: C<EventTime> feature values must be a Unix timestamp in
seconds.

=item *

C<String>: C<EventTime> feature values must be an ISO-8601 string in
the format. The following formats are supported
C<yyyy-MM-dd'T'HH:mm:ssZ> and C<yyyy-MM-dd'T'HH:mm:ss.SSSZ> where
C<yyyy>, C<MM>, and C<dd> represent the year, month, and day
respectively and C<HH>, C<mm>, C<ss>, and if applicable, C<SSS>
represent the hour, month, second and milliseconds respsectively.
C<'T'> and C<Z> are constants.

=back




=head2 B<REQUIRED> FeatureDefinitions => ArrayRef[L<Paws::SageMaker::FeatureDefinition>]

A list of C<Feature> names and types. C<Name> and C<Type> is compulsory
per C<Feature>.

Valid feature C<FeatureType>s are C<Integral>, C<Fractional> and
C<String>.

C<FeatureName>s cannot be any of the following: C<is_deleted>,
C<write_time>, C<api_invocation_time>

You can create up to 2,500 C<FeatureDefinition>s per C<FeatureGroup>.



=head2 B<REQUIRED> FeatureGroupName => Str

The name of the C<FeatureGroup>. The name must be unique within an
Amazon Web Services Region in an Amazon Web Services account. The name:

=over

=item *

Must start and end with an alphanumeric character.

=item *

Can only contain alphanumeric character and hyphens. Spaces are not
allowed.

=back




=head2 OfflineStoreConfig => L<Paws::SageMaker::OfflineStoreConfig>

Use this to configure an C<OfflineFeatureStore>. This parameter allows
you to specify:

=over

=item *

The Amazon Simple Storage Service (Amazon S3) location of an
C<OfflineStore>.

=item *

A configuration for an Amazon Web Services Glue or Amazon Web Services
Hive data cataolgue.

=item *

An KMS encryption key to encrypt the Amazon S3 location used for
C<OfflineStore>.

=back

To learn more about this parameter, see OfflineStoreConfig.



=head2 OnlineStoreConfig => L<Paws::SageMaker::OnlineStoreConfig>

You can turn the C<OnlineStore> on or off by specifying C<True> for the
C<EnableOnlineStore> flag in C<OnlineStoreConfig>; the default value is
C<False>.

You can also include an Amazon Web Services KMS key ID (C<KMSKeyId>)
for at-rest encryption of the C<OnlineStore>.



=head2 B<REQUIRED> RecordIdentifierFeatureName => Str

The name of the C<Feature> whose value uniquely identifies a C<Record>
defined in the C<FeatureStore>. Only the latest record per identifier
value will be stored in the C<OnlineStore>.
C<RecordIdentifierFeatureName> must be one of feature definitions'
names.

You use the C<RecordIdentifierFeatureName> to access data in a
C<FeatureStore>.

This name:

=over

=item *

Must start and end with an alphanumeric character.

=item *

Can only contains alphanumeric characters, hyphens, underscores. Spaces
are not allowed.

=back




=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM execution role used to
persist data into the C<OfflineStore> if an C<OfflineStoreConfig> is
provided.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Tags used to identify C<Features> in each C<FeatureGroup>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFeatureGroup in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

