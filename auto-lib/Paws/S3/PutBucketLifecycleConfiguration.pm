
package Paws::S3::PutBucketLifecycleConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has LifecycleConfiguration => (is => 'ro', isa => 'Paws::S3::BucketLifecycleConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketLifecycleConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?lifecycle');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketLifecycleConfiguration - Arguments for method PutBucketLifecycleConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketLifecycleConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketLifecycleConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketLifecycleConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketLifecycleConfiguration(
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
                    Key   => 'MyObjectKey',    # min: 1
                    Value => 'MyValue',

                  },
                  ...                          # OPTIONAL
                ],                             # OPTIONAL
              },    # OPTIONAL
              Prefix => 'MyPrefix',    # OPTIONAL
              Tag    => {
                Key   => 'MyObjectKey',    # min: 1
                Value => 'MyValue',

              },    # OPTIONAL
            },    # OPTIONAL
            ID                          => 'MyID',    # OPTIONAL
            NoncurrentVersionExpiration => {
              NoncurrentDays => 1,                    # OPTIONAL
            },    # OPTIONAL
            NoncurrentVersionTransitions => [
              {
                NoncurrentDays => 1,          # OPTIONAL
                StorageClass   => 'GLACIER'
                , # values: GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING; OPTIONAL
              },
              ...
            ],    # OPTIONAL
            Prefix      => 'MyPrefix',    # OPTIONAL
            Transitions => [
              {
                Date         => '1970-01-01T01:00:00',    # OPTIONAL
                Days         => 1,                        # OPTIONAL
                StorageClass => 'GLACIER'
                , # values: GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING; OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },
          ...
        ],

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketLifecycleConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 LifecycleConfiguration => L<Paws::S3::BucketLifecycleConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketLifecycleConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

