
package Paws::S3::PutBucketRequestPayment;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_RequestPaymentConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has RequestPaymentConfiguration => (is => 'ro', isa => S3_RequestPaymentConfiguration, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketRequestPayment');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?requestPayment');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'RequestPaymentConfiguration' => {
                                                  'type' => 'S3_RequestPaymentConfiguration',
                                                  'class' => 'Paws::S3::RequestPaymentConfiguration'
                                                },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'Bucket' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'RequestPaymentConfiguration' => 1,
                    'Bucket' => 1
                  },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'header_name' => 'Content-MD5',
                                        'auto' => 'MD5'
                                      }
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

Paws::S3::PutBucketRequestPayment - Arguments for method PutBucketRequestPayment on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketRequestPayment on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketRequestPayment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketRequestPayment.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketRequestPayment(
      Bucket                      => 'MyBucketName',
      RequestPaymentConfiguration => {
        Payer => 'Requester',    # values: Requester, BucketOwner

      },
      ContentLength => 1,                 # OPTIONAL
      ContentMD5    => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketRequestPayment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

E<gt>The base64-encoded 128-bit MD5 digest of the data. You must use
this header as a message integrity check to verify that the request
body was not corrupted in transit. For more information, see RFC 1864
(http://www.ietf.org/rfc/rfc1864.txt).



=head2 B<REQUIRED> RequestPaymentConfiguration => S3_RequestPaymentConfiguration

Container for Payer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketRequestPayment in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

