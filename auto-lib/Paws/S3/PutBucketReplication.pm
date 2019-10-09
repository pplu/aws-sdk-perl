
package Paws::S3::PutBucketReplication;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_ReplicationConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has ReplicationConfiguration => (is => 'ro', isa => S3_ReplicationConfiguration, required => 1, predicate => 1);
  has Token => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketReplication');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?replication');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'ReplicationConfiguration' => {
                                               'class' => 'Paws::S3::ReplicationConfiguration',
                                               'type' => 'S3_ReplicationConfiguration'
                                             },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'Token' => {
                            'type' => 'Str'
                          }
             },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'auto' => 'MD5',
                                        'header_name' => 'Content-MD5'
                                      }
                    },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'ParamInHeader' => {
                       'ContentLength' => 'Content-Length',
                       'Token' => 'x-amz-bucket-object-lock-token'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketReplication - Arguments for method PutBucketReplication on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketReplication on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketReplication.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketReplication(
      Bucket                   => 'MyBucketName',
      ReplicationConfiguration => {
        Role  => 'MyRole',
        Rules => [
          {
            Destination => {
              Bucket                   => 'MyBucketName',
              AccessControlTranslation => {
                Owner => 'Destination',    # values: Destination

              },    # OPTIONAL
              Account                 => 'MyAccountId',    # OPTIONAL
              EncryptionConfiguration => {
                ReplicaKmsKeyID => 'MyReplicaKmsKeyID',    # OPTIONAL
              },    # OPTIONAL
              StorageClass => 'STANDARD'
              , # values: STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER, DEEP_ARCHIVE; OPTIONAL
            },
            Status                  => 'Enabled',    # values: Enabled, Disabled
            DeleteMarkerReplication => {
              Status => 'Enabled',    # values: Enabled, Disabled; OPTIONAL
            },    # OPTIONAL
            Filter => {
              And => {
                Prefix => 'MyPrefix',    # OPTIONAL
                Tags   => [
                  {
                    Key   => 'MyObjectKey',    # min: 1
                    Value => 'MyValue',

                  },
                  ...
                ],                             # OPTIONAL
              },    # OPTIONAL
              Prefix => 'MyPrefix',    # OPTIONAL
              Tag    => {
                Key   => 'MyObjectKey',    # min: 1
                Value => 'MyValue',

              },
            },    # OPTIONAL
            ID                      => 'MyID',        # OPTIONAL
            Prefix                  => 'MyPrefix',    # OPTIONAL
            Priority                => 1,             # OPTIONAL
            SourceSelectionCriteria => {
              SseKmsEncryptedObjects => {
                Status => 'Enabled',    # values: Enabled, Disabled

              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],

      },
      ContentLength => 1,                      # OPTIONAL
      ContentMD5    => 'MyContentMD5',         # OPTIONAL
      Token         => 'MyObjectLockToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketReplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the data. You must use this
header as a message integrity check to verify that the request body was
not corrupted in transit.



=head2 B<REQUIRED> ReplicationConfiguration => S3_ReplicationConfiguration





=head2 Token => Str

A token that allows Amazon S3 object lock to be enabled for an existing
bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketReplication in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

