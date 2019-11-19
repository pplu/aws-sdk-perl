
package Paws::S3::PutBucketLogging;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_BucketLoggingStatus/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BucketLoggingStatus => (is => 'ro', isa => S3_BucketLoggingStatus, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketLogging');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?logging');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Bucket' => 1,
                    'BucketLoggingStatus' => 1
                  },
  'types' => {
               'Bucket' => {
                             'type' => 'Str'
                           },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'BucketLoggingStatus' => {
                                          'class' => 'Paws::S3::BucketLoggingStatus',
                                          'type' => 'S3_BucketLoggingStatus'
                                        },
               'ContentLength' => {
                                    'type' => 'Int'
                                  }
             },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'auto' => 'MD5',
                                        'header_name' => 'Content-MD5'
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

Paws::S3::PutBucketLogging - Arguments for method PutBucketLogging on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketLogging on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketLogging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketLogging.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketLogging(
      Bucket              => 'MyBucketName',
      BucketLoggingStatus => {
        LoggingEnabled => {
          TargetBucket => 'MyTargetBucket',
          TargetPrefix => 'MyTargetPrefix',
          TargetGrants => [
            {
              Grantee => {
                Type => 'CanonicalUser'
                ,    # values: CanonicalUser, AmazonCustomerByEmail, Group
                DisplayName  => 'MyDisplayName',     # OPTIONAL
                EmailAddress => 'MyEmailAddress',    # OPTIONAL
                ID           => 'MyID',              # OPTIONAL
                URI          => 'MyURI',             # OPTIONAL
              },    # OPTIONAL
              Permission =>
                'FULL_CONTROL',    # values: FULL_CONTROL, READ, WRITE; OPTIONAL
            },
            ...
          ],                       # OPTIONAL
        },    # OPTIONAL
      },
      ContentLength => 1,                 # OPTIONAL
      ContentMD5    => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketLogging>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which to set the logging parameters.



=head2 B<REQUIRED> BucketLoggingStatus => S3_BucketLoggingStatus

Container for logging status information.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str

The MD5 hash of the C<PutBucketLogging> request body.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketLogging in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

