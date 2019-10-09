
package Paws::S3::PutBucketVersioning;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_VersioningConfiguration/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has MFA => (is => 'ro', isa => Str, predicate => 1);
  has VersioningConfiguration => (is => 'ro', isa => S3_VersioningConfiguration, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutBucketVersioning');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?versioning');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'VersioningConfiguration' => {
                                              'class' => 'Paws::S3::VersioningConfiguration',
                                              'type' => 'S3_VersioningConfiguration'
                                            },
               'MFA' => {
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
                       'ContentLength' => 'Content-Length',
                       'MFA' => 'x-amz-mfa'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketVersioning - Arguments for method PutBucketVersioning on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketVersioning on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketVersioning.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketVersioning.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketVersioning(
      Bucket                  => 'MyBucketName',
      VersioningConfiguration => {
        MFADelete => 'Enabled',    # values: Enabled, Disabled; OPTIONAL
        Status    => 'Enabled',    # values: Enabled, Suspended; OPTIONAL
      },
      ContentLength => 1,                 # OPTIONAL
      ContentMD5    => 'MyContentMD5',    # OPTIONAL
      MFA           => 'MyMFA',           # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketVersioning>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str





=head2 MFA => Str

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.



=head2 B<REQUIRED> VersioningConfiguration => S3_VersioningConfiguration






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketVersioning in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

