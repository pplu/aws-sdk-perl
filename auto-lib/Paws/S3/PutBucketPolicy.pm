
package Paws::S3::PutBucketPolicy;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::S3::Types qw//;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ConfirmRemoveSelfBucketAccess => (is => 'ro', isa => Bool, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has Policy => (is => 'ro', isa => Str, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketPolicy');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?policy');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfirmRemoveSelfBucketAccess' => {
                                                    'type' => 'Bool'
                                                  },
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'Policy' => {
                             'type' => 'Str'
                           },
               'ContentMD5' => {
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
                       'ConfirmRemoveSelfBucketAccess' => 'x-amz-confirm-remove-self-bucket-access',
                       'ContentLength' => 'Content-Length'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketPolicy - Arguments for method PutBucketPolicy on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketPolicy on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketPolicy.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketPolicy(
      Bucket                        => 'MyBucketName',
      Policy                        => 'MyPolicy',
      ConfirmRemoveSelfBucketAccess => 1,                 # OPTIONAL
      ContentLength                 => 1,                 # OPTIONAL
      ContentMD5                    => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 ConfirmRemoveSelfBucketAccess => Bool

Set this parameter to true to confirm that you want to remove your
permissions to change this bucket policy in the future.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str





=head2 B<REQUIRED> Policy => Str

The bucket policy as a JSON document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketPolicy in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

