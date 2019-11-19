
package Paws::S3::PutObjectAcl;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_AccessControlPolicy/;
  has AccessControlPolicy => (is => 'ro', isa => S3_AccessControlPolicy, predicate => 1);
  has ACL => (is => 'ro', isa => Str, predicate => 1);
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has GrantFullControl => (is => 'ro', isa => Str, predicate => 1);
  has GrantRead => (is => 'ro', isa => Str, predicate => 1);
  has GrantReadACP => (is => 'ro', isa => Str, predicate => 1);
  has GrantWrite => (is => 'ro', isa => Str, predicate => 1);
  has GrantWriteACP => (is => 'ro', isa => Str, predicate => 1);
  has Key => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);
  has VersionId => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutObjectAcl');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}/{Key+}?acl');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::PutObjectAclOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'auto' => 'MD5',
                                        'header_name' => 'Content-MD5'
                                      }
                    },
  'ParamInQuery' => {
                      'VersionId' => 'versionId'
                    },
  'IsRequired' => {
                    'Key' => 1,
                    'Bucket' => 1
                  },
  'types' => {
               'GrantReadACP' => {
                                   'type' => 'Str'
                                 },
               'Key' => {
                          'type' => 'Str'
                        },
               'ACL' => {
                          'type' => 'Str'
                        },
               'RequestPayer' => {
                                   'type' => 'Str'
                                 },
               'AccessControlPolicy' => {
                                          'type' => 'S3_AccessControlPolicy',
                                          'class' => 'Paws::S3::AccessControlPolicy'
                                        },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'GrantWriteACP' => {
                                    'type' => 'Str'
                                  },
               'GrantWrite' => {
                                 'type' => 'Str'
                               },
               'GrantFullControl' => {
                                       'type' => 'Str'
                                     },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'GrantRead' => {
                                'type' => 'Str'
                              },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'ContentLength' => {
                                    'type' => 'Int'
                                  }
             },
  'ParamInHeader' => {
                       'GrantFullControl' => 'x-amz-grant-full-control',
                       'GrantReadACP' => 'x-amz-grant-read-acp',
                       'ACL' => 'x-amz-acl',
                       'RequestPayer' => 'x-amz-request-payer',
                       'ContentLength' => 'Content-Length',
                       'GrantRead' => 'x-amz-grant-read',
                       'GrantWrite' => 'x-amz-grant-write',
                       'GrantWriteACP' => 'x-amz-grant-write-acp'
                     },
  'ParamInURI' => {
                    'Key' => 'Key',
                    'Bucket' => 'Bucket'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectAcl - Arguments for method PutObjectAcl on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObjectAcl on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObjectAcl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObjectAcl.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $PutObjectAclOutput = $s3->PutObjectAcl(
      Bucket              => 'MyBucketName',
      Key                 => 'MyObjectKey',
      ACL                 => 'private',        # OPTIONAL
      AccessControlPolicy => {
        Grants => [
          {
            Grantee => {
              Type => 'CanonicalUser'
              ,    # values: CanonicalUser, AmazonCustomerByEmail, Group
              DisplayName  => 'MyDisplayName',     # OPTIONAL
              EmailAddress => 'MyEmailAddress',    # OPTIONAL
              ID           => 'MyID',              # OPTIONAL
              URI          => 'MyURI',             # OPTIONAL
            },    # OPTIONAL
            Permission => 'FULL_CONTROL'
            , # values: FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Owner => {
          DisplayName => 'MyDisplayName',    # OPTIONAL
          ID          => 'MyID',             # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ContentLength    => 1,                       # OPTIONAL
      ContentMD5       => 'MyContentMD5',          # OPTIONAL
      GrantFullControl => 'MyGrantFullControl',    # OPTIONAL
      GrantRead        => 'MyGrantRead',           # OPTIONAL
      GrantReadACP     => 'MyGrantReadACP',        # OPTIONAL
      GrantWrite       => 'MyGrantWrite',          # OPTIONAL
      GrantWriteACP    => 'MyGrantWriteACP',       # OPTIONAL
      RequestPayer     => 'requester',             # OPTIONAL
      VersionId        => 'MyObjectVersionId',     # OPTIONAL
    );

    # Results:
    my $RequestCharged = $PutObjectAclOutput->RequestCharged;

    # Returns a L<Paws::S3::PutObjectAclOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObjectAcl>

=head1 ATTRIBUTES


=head2 AccessControlPolicy => S3_AccessControlPolicy

Contains the elements that set the ACL permissions for an object per
grantee.



=head2 ACL => Str

The canned ACL to apply to the object. For more information, see Canned
ACL
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#CannedACL)

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">, C<"aws-exec-read">, C<"bucket-owner-read">, C<"bucket-owner-full-control">

=head2 B<REQUIRED> Bucket => Str

The name of the bucket to which the ACL is being added.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the data. This header must be
used as a message integrity check to verify that the request body was
not corrupted in transit. For more information, go to RFC 1864.E<gt>
(http://www.ietf.org/rfc/rfc1864.txt)



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



=head2 B<REQUIRED> Key => Str

Key for which the PUT operation was initiated.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

VersionId used to reference a specific version of the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObjectAcl in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

