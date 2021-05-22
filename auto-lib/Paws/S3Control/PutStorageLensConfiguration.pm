
package Paws::S3Control::PutStorageLensConfiguration;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has ConfigId => (is => 'ro', isa => 'Str', uri_name => 'storagelensid', traits => ['ParamInURI'], required => 1);
  has StorageLensConfiguration => (is => 'ro', isa => 'Paws::S3Control::StorageLensConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::StorageLensTag]', request_name => 'Tag', traits => ['NameInRequest']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutStorageLensConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/storagelens/{storagelensid}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'PutStorageLensConfigurationRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutStorageLensConfiguration - Arguments for method PutStorageLensConfiguration on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutStorageLensConfiguration on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutStorageLensConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutStorageLensConfiguration.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->PutStorageLensConfiguration(
      AccountId                => 'MyAccountId',
      ConfigId                 => 'MyConfigId',
      StorageLensConfiguration => {
        AccountLevel => {
          BucketLevel => {
            ActivityMetrics => {
              IsEnabled => 1,    # OPTIONAL
            },    # OPTIONAL
            PrefixLevel => {
              StorageMetrics => {
                IsEnabled         => 1,    # OPTIONAL
                SelectionCriteria => {
                  Delimiter =>
                    'MyStorageLensPrefixLevelDelimiter',    # max: 1; OPTIONAL
                  MaxDepth                  => 1, # min: 1, max: 10; OPTIONAL
                  MinStorageBytesPercentage => 1, # min: 0.1, max: 100; OPTIONAL
                },    # OPTIONAL
              },

            },    # OPTIONAL
          },
          ActivityMetrics => {
            IsEnabled => 1,    # OPTIONAL
          },    # OPTIONAL
        },
        Id        => 'MyConfigId',    # min: 1, max: 64
        IsEnabled => 1,               # OPTIONAL
        AwsOrg    => {
          Arn => 'MyAwsOrgArn',       # min: 1, max: 1024

        },    # OPTIONAL
        DataExport => {
          S3BucketDestination => {
            AccountId           => 'MyAccountId',         # max: 64
            Arn                 => 'MyS3BucketArnString', # min: 1, max: 128
            Format              => 'CSV',                 # values: CSV, Parquet
            OutputSchemaVersion => 'V_1',                 # values: V_1
            Encryption          => {
              SSEKMS => {
                KeyId => 'MySSEKMSKeyId',

              },                                          # OPTIONAL
              SSES3 => {

              },                                          # OPTIONAL
            },    # OPTIONAL
            Prefix => 'MyPrefix',    # OPTIONAL
          },

        },    # OPTIONAL
        Exclude => {
          Buckets => [
            'MyS3BucketArnString', ...    # min: 1, max: 128
          ],                              # OPTIONAL
          Regions => [
            'MyS3AWSRegion', ...          # min: 5, max: 30
          ],                              # OPTIONAL
        },    # OPTIONAL
        Include => {
          Buckets => [
            'MyS3BucketArnString', ...    # min: 1, max: 128
          ],                              # OPTIONAL
          Regions => [
            'MyS3AWSRegion', ...          # min: 5, max: 30
          ],                              # OPTIONAL
        },    # OPTIONAL
        StorageLensArn => 'MyStorageLensArn',    # min: 1, max: 1024; OPTIONAL
      },
      Tags => [
        {
          Key   => 'MyTagKeyString',             # min: 1, max: 1024
          Value => 'MyTagValueString',           # max: 1024

        },
        ...
      ],                                         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutStorageLensConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID of the requester.



=head2 B<REQUIRED> ConfigId => Str

The ID of the S3 Storage Lens configuration.



=head2 B<REQUIRED> StorageLensConfiguration => L<Paws::S3Control::StorageLensConfiguration>

The S3 Storage Lens configuration.



=head2 Tags => ArrayRef[L<Paws::S3Control::StorageLensTag>]

The tag set of the S3 Storage Lens configuration.

You can set up to a maximum of 50 tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutStorageLensConfiguration in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

