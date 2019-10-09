
package Paws::S3::PutBucketInventoryConfiguration;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_InventoryConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InventoryConfiguration => (is => 'ro', isa => S3_InventoryConfiguration, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketInventoryConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?inventory');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InventoryConfiguration' => {
                                             'class' => 'Paws::S3::InventoryConfiguration',
                                             'type' => 'S3_InventoryConfiguration'
                                           },
               'Id' => {
                         'type' => 'Str'
                       },
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Bucket' => {
                             'type' => 'Str'
                           }
             },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'ParamInQuery' => {
                      'Id' => 'id'
                    },
  'ParamInHeader' => {
                       'ContentLength' => 'Content-Length'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketInventoryConfiguration - Arguments for method PutBucketInventoryConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketInventoryConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketInventoryConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketInventoryConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketInventoryConfiguration(
      Bucket                 => 'MyBucketName',
      Id                     => 'MyInventoryId',
      InventoryConfiguration => {
        Destination => {
          S3BucketDestination => {
            Bucket     => 'MyBucketName',
            Format     => 'CSV',            # values: CSV, ORC, Parquet
            AccountId  => 'MyAccountId',    # OPTIONAL
            Encryption => {
              SSEKMS => {
                KeyId => 'MySSEKMSKeyId',

              },                            # OPTIONAL
              SSES3 => {

              },                            # OPTIONAL
            },    # OPTIONAL
            Prefix => 'MyPrefix',    # OPTIONAL
          },

        },
        Id                     => 'MyInventoryId',
        IncludedObjectVersions => 'All',             # values: All, Current
        IsEnabled              => 1,
        Schedule               => {
          Frequency => 'Daily',                      # values: Daily, Weekly

        },
        Filter => {
          Prefix => 'MyPrefix',                      # OPTIONAL

        },    # OPTIONAL
        OptionalFields => [
          'Size',
          ... # values: Size, LastModifiedDate, StorageClass, ETag, IsMultipartUploaded, ReplicationStatus, EncryptionStatus, ObjectLockRetainUntilDate, ObjectLockMode, ObjectLockLegalHoldStatus
        ],    # OPTIONAL
      },
      ContentLength => 1,    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketInventoryConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket where the inventory configuration will be
stored.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 B<REQUIRED> Id => Str

The ID used to identify the inventory configuration.



=head2 B<REQUIRED> InventoryConfiguration => S3_InventoryConfiguration

Specifies the inventory configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketInventoryConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

