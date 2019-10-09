
package Paws::S3::CreateBucket;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::S3::Types qw/S3_CreateBucketConfiguration/;
  has ACL => (is => 'ro', isa => Str, predicate => 1);
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has CreateBucketConfiguration => (is => 'ro', isa => S3_CreateBucketConfiguration, predicate => 1);
  has GrantFullControl => (is => 'ro', isa => Str, predicate => 1);
  has GrantRead => (is => 'ro', isa => Str, predicate => 1);
  has GrantReadACP => (is => 'ro', isa => Str, predicate => 1);
  has GrantWrite => (is => 'ro', isa => Str, predicate => 1);
  has GrantWriteACP => (is => 'ro', isa => Str, predicate => 1);
  has ObjectLockEnabledForBucket => (is => 'ro', isa => Bool, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateBucket');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::CreateBucketOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'ObjectLockEnabledForBucket' => {
                                                 'type' => 'Bool'
                                               },
               'GrantFullControl' => {
                                       'type' => 'Str'
                                     },
               'CreateBucketConfiguration' => {
                                                'class' => 'Paws::S3::CreateBucketConfiguration',
                                                'type' => 'S3_CreateBucketConfiguration'
                                              },
               'GrantWriteACP' => {
                                    'type' => 'Str'
                                  },
               'ACL' => {
                          'type' => 'Str'
                        },
               'GrantRead' => {
                                'type' => 'Str'
                              },
               'GrantWrite' => {
                                 'type' => 'Str'
                               },
               'GrantReadACP' => {
                                   'type' => 'Str'
                                 }
             },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'ParamInHeader' => {
                       'ContentLength' => 'Content-Length',
                       'ObjectLockEnabledForBucket' => 'x-amz-bucket-object-lock-enabled',
                       'GrantFullControl' => 'x-amz-grant-full-control',
                       'GrantWriteACP' => 'x-amz-grant-write-acp',
                       'ACL' => 'x-amz-acl',
                       'GrantRead' => 'x-amz-grant-read',
                       'GrantWrite' => 'x-amz-grant-write',
                       'GrantReadACP' => 'x-amz-grant-read-acp'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucket - Arguments for method CreateBucket on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBucket on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method CreateBucket.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBucket.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $CreateBucketOutput = $s3->CreateBucket(
      Bucket                    => 'MyBucketName',
      ACL                       => 'private',        # OPTIONAL
      ContentLength             => 1,                # OPTIONAL
      CreateBucketConfiguration => {
        LocationConstraint => 'EU'
        , # values: EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1; OPTIONAL
      },    # OPTIONAL
      GrantFullControl           => 'MyGrantFullControl',    # OPTIONAL
      GrantRead                  => 'MyGrantRead',           # OPTIONAL
      GrantReadACP               => 'MyGrantReadACP',        # OPTIONAL
      GrantWrite                 => 'MyGrantWrite',          # OPTIONAL
      GrantWriteACP              => 'MyGrantWriteACP',       # OPTIONAL
      ObjectLockEnabledForBucket => 1,                       # OPTIONAL
    );

    # Results:
    my $Location = $CreateBucketOutput->Location;

    # Returns a L<Paws::S3::CreateBucketOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/CreateBucket>

=head1 ATTRIBUTES


=head2 ACL => Str

The canned ACL to apply to the bucket.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">

=head2 B<REQUIRED> Bucket => Str





=head2 ContentLength => Int

Size of the body in bytes.



=head2 CreateBucketConfiguration => S3_CreateBucketConfiguration





=head2 GrantFullControl => Str

Allows grantee the read, write, read ACP, and write ACP permissions on
the bucket.



=head2 GrantRead => Str

Allows grantee to list the objects in the bucket.



=head2 GrantReadACP => Str

Allows grantee to read the bucket ACL.



=head2 GrantWrite => Str

Allows grantee to create, overwrite, and delete any object in the
bucket.



=head2 GrantWriteACP => Str

Allows grantee to write the ACL for the applicable bucket.



=head2 ObjectLockEnabledForBucket => Bool

Specifies whether you want Amazon S3 object lock to be enabled for the
new bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBucket in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

