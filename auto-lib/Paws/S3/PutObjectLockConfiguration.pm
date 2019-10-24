
package Paws::S3::PutObjectLockConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_ObjectLockConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has ObjectLockConfiguration => (is => 'ro', isa => S3_ObjectLockConfiguration, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);
  has Token => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutObjectLockConfiguration');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?object-lock');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::PutObjectLockConfigurationOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectLockConfiguration' => {
                                              'class' => 'Paws::S3::ObjectLockConfiguration',
                                              'type' => 'S3_ObjectLockConfiguration'
                                            },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'RequestPayer' => {
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
                       'RequestPayer' => 'x-amz-request-payer',
                       'Token' => 'x-amz-bucket-object-lock-token'
                     },
  'IsRequired' => {
                    'Bucket' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectLockConfiguration - Arguments for method PutObjectLockConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObjectLockConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObjectLockConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObjectLockConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $PutObjectLockConfigurationOutput = $s3->PutObjectLockConfiguration(
      Bucket                  => 'MyBucketName',
      ContentMD5              => 'MyContentMD5',    # OPTIONAL
      ObjectLockConfiguration => {
        ObjectLockEnabled => 'Enabled',             # values: Enabled; OPTIONAL
        Rule              => {
          DefaultRetention => {
            Days  => 1,               # OPTIONAL
            Mode  => 'GOVERNANCE',    # values: GOVERNANCE, COMPLIANCE; OPTIONAL
            Years => 1,               # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RequestPayer => 'requester',            # OPTIONAL
      Token        => 'MyObjectLockToken',    # OPTIONAL
    );

    # Results:
    my $RequestCharged = $PutObjectLockConfigurationOutput->RequestCharged;

    # Returns a L<Paws::S3::PutObjectLockConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObjectLockConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket whose object lock configuration you want to create or
replace.



=head2 ContentMD5 => Str

The MD5 hash for the request body.



=head2 ObjectLockConfiguration => S3_ObjectLockConfiguration

The object lock configuration that you want to apply to the specified
bucket.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 Token => Str

A token to allow Amazon S3 object lock to be enabled for an existing
bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObjectLockConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

