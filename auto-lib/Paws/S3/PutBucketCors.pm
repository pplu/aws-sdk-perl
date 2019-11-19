
package Paws::S3::PutBucketCors;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_CORSConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has CORSConfiguration => (is => 'ro', isa => S3_CORSConfiguration, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketCors');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?cors');
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
                       'ContentLength' => 'Content-Length'
                     },
  'IsRequired' => {
                    'Bucket' => 1,
                    'CORSConfiguration' => 1
                  },
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'CORSConfiguration' => {
                                        'class' => 'Paws::S3::CORSConfiguration',
                                        'type' => 'S3_CORSConfiguration'
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

Paws::S3::PutBucketCors - Arguments for method PutBucketCors on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketCors on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketCors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketCors.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketCors(
      Bucket            => 'MyBucketName',
      CORSConfiguration => {
        CORSRules => [
          {
            AllowedMethods => [ 'MyAllowedMethod', ... ],
            AllowedOrigins => [ 'MyAllowedOrigin', ... ],
            AllowedHeaders => [ 'MyAllowedHeader', ... ],    # OPTIONAL
            ExposeHeaders  => [ 'MyExposeHeader',  ... ],    # OPTIONAL
            MaxAgeSeconds => 1,                              # OPTIONAL
          },
          ...
        ],

      },
      ContentLength => 1,                                    # OPTIONAL
      ContentMD5    => 'MyContentMD5',                       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketCors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

Specifies the bucket impacted by the C<cors>configuration.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the data. This header must be
used as a message integrity check to verify that the request body was
not corrupted in transit. For more information, go to RFC 1864.
(http://www.ietf.org/rfc/rfc1864.txt)



=head2 B<REQUIRED> CORSConfiguration => S3_CORSConfiguration

Describes the cross-origin access configuration for objects in an
Amazon S3 bucket. For more information, see Enabling Cross-Origin
Resource Sharing
(https://docs.aws.amazon.com/AmazonS3/latest/dev//cors.html) in the
Amazon Simple Storage Service Developer Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketCors in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

