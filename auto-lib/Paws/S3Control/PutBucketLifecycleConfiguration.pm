
package Paws::S3Control::PutBucketLifecycleConfiguration;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);
  has LifecycleConfiguration => (is => 'ro', isa => 'Paws::S3Control::LifecycleConfiguration', traits => ['ParamInBody']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLifecycleConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/bucket/{name}/lifecycleconfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutBucketLifecycleConfiguration - Arguments for method PutBucketLifecycleConfiguration on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketLifecycleConfiguration on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutBucketLifecycleConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketLifecycleConfiguration.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    $s3 -control->PutBucketLifecycleConfiguration(
      AccountId              => 'MyAccountId',
      Bucket                 => 'MyBucketName',
      LifecycleConfiguration => {
        Rules => [
          {
            Status => 'Enabled',    # values: Enabled, Disabled
            AbortIncompleteMultipartUpload => {
              DaysAfterInitiation => 1,    # OPTIONAL
            },    # OPTIONAL
            Expiration => {
              Date                      => '1970-01-01T01:00:00',    # OPTIONAL
              Days                      => 1,                        # OPTIONAL
              ExpiredObjectDeleteMarker => 1,                        # OPTIONAL
            },    # OPTIONAL
            Filter => {
              And => {
                Prefix => 'MyPrefix',    # OPTIONAL
                Tags   => [
                  {
                    Key   => 'MyTagKeyString',      # min: 1, max: 1024
                    Value => 'MyTagValueString',    # max: 1024

                  },
                  ...
                ],                                  # OPTIONAL
              },    # OPTIONAL
              Prefix => 'MyPrefix',    # OPTIONAL
              Tag    => {
                Key   => 'MyTagKeyString',      # min: 1, max: 1024
                Value => 'MyTagValueString',    # max: 1024

              },
            },    # OPTIONAL
            ID                          => 'MyID',    # OPTIONAL
            NoncurrentVersionExpiration => {
              NoncurrentDays => 1,                    # OPTIONAL
            },    # OPTIONAL
            NoncurrentVersionTransitions => [
              {
                NoncurrentDays => 1,          # OPTIONAL
                StorageClass   => 'GLACIER'
                , # values: GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE; OPTIONAL
              },
              ...
            ],    # OPTIONAL
            Transitions => [
              {
                Date         => '1970-01-01T01:00:00',    # OPTIONAL
                Days         => 1,                        # OPTIONAL
                StorageClass => 'GLACIER'
                , # values: GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],        # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutBucketLifecycleConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The AWS account ID of the Outposts bucket.



=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which to set the configuration.



=head2 LifecycleConfiguration => L<Paws::S3Control::LifecycleConfiguration>

Container for lifecycle rules. You can add as many as 1,000 rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketLifecycleConfiguration in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

