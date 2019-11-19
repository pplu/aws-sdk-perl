
package Paws::S3::PutBucketTagging;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_Tagging/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has Tagging => (is => 'ro', isa => S3_Tagging, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketTagging');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?tagging');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tagging' => 1,
                    'Bucket' => 1
                  },
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Tagging' => {
                              'class' => 'Paws::S3::Tagging',
                              'type' => 'S3_Tagging'
                            },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'ContentMD5' => {
                                 'type' => 'Str'
                               }
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

Paws::S3::PutBucketTagging - Arguments for method PutBucketTagging on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketTagging on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketTagging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketTagging.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketTagging(
      Bucket  => 'MyBucketName',
      Tagging => {
        TagSet => [
          {
            Key   => 'MyObjectKey',    # min: 1
            Value => 'MyValue',

          },
          ...
        ],

      },
      ContentLength => 1,                 # OPTIONAL
      ContentMD5    => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketTagging>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket name.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The base64-encoded 128-bit MD5 digest of the data. You must use this
header as a message integrity check to verify that the request body was
not corrupted in transit. For more information, see RFC 1864
(http://www.ietf.org/rfc/rfc1864.txt).



=head2 B<REQUIRED> Tagging => S3_Tagging

Container for the TagSet and Tag elements.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketTagging in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

