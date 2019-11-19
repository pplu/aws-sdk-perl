
package Paws::S3::PutBucketAcl;
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

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketAcl');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?acl');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'header_name' => 'Content-MD5',
                                        'auto' => 'MD5'
                                      }
                    },
  'ParamInHeader' => {
                       'GrantReadACP' => 'x-amz-grant-read-acp',
                       'ContentLength' => 'Content-Length',
                       'GrantRead' => 'x-amz-grant-read',
                       'ACL' => 'x-amz-acl',
                       'GrantFullControl' => 'x-amz-grant-full-control',
                       'GrantWrite' => 'x-amz-grant-write',
                       'GrantWriteACP' => 'x-amz-grant-write-acp'
                     },
  'IsRequired' => {
                    'Bucket' => 1
                  },
  'types' => {
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'GrantWrite' => {
                                 'type' => 'Str'
                               },
               'GrantWriteACP' => {
                                    'type' => 'Str'
                                  },
               'ACL' => {
                          'type' => 'Str'
                        },
               'AccessControlPolicy' => {
                                          'class' => 'Paws::S3::AccessControlPolicy',
                                          'type' => 'S3_AccessControlPolicy'
                                        },
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'GrantRead' => {
                                'type' => 'Str'
                              },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'GrantFullControl' => {
                                       'type' => 'Str'
                                     },
               'GrantReadACP' => {
                                   'type' => 'Str'
                                 }
             },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketAcl - Arguments for method PutBucketAcl on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketAcl on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketAcl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketAcl.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketAcl(
      Bucket              => 'MyBucketName',
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
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketAcl>

=head1 ATTRIBUTES


=head2 AccessControlPolicy => S3_AccessControlPolicy

Contains the elements that set the ACL permissions for an object per
grantee.



=head2 ACL => Str

The canned ACL to apply to the bucket.

Valid values are: C<"private">, C<"public-read">, C<"public-read-write">, C<"authenticated-read">

=head2 B<REQUIRED> Bucket => Str

The bucket to which to apply the ACL.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the data. This header must be
used as a message integrity check to verify that the request body was
not corrupted in transit. For more information, go to RFC 1864.
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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketAcl in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

