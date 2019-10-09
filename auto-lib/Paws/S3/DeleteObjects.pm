
package Paws::S3::DeleteObjects;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::S3::Types qw/S3_Delete/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BypassGovernanceRetention => (is => 'ro', isa => Bool, predicate => 1);
  has ContentLength => (is => 'ro', isa => Int, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has Delete => (is => 'ro', isa => S3_Delete, required => 1, predicate => 1);
  has MFA => (is => 'ro', isa => Str, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteObjects');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?delete');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::DeleteObjectsOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Delete' => {
                             'class' => 'Paws::S3::Delete',
                             'type' => 'S3_Delete'
                           },
               'ContentLength' => {
                                    'type' => 'Int'
                                  },
               'BypassGovernanceRetention' => {
                                                'type' => 'Bool'
                                              },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'RequestPayer' => {
                                   'type' => 'Str'
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
                       'BypassGovernanceRetention' => 'x-amz-bypass-governance-retention',
                       'RequestPayer' => 'x-amz-request-payer',
                       'MFA' => 'x-amz-mfa'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjects - Arguments for method DeleteObjects on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObjects on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteObjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObjects.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $DeleteObjectsOutput = $s3->DeleteObjects(
      Bucket => 'MyBucketName',
      Delete => {
        Objects => [
          {
            Key       => 'MyObjectKey',          # min: 1
            VersionId => 'MyObjectVersionId',    # OPTIONAL
          },
          ...
        ],
        Quiet => 1,                              # OPTIONAL
      },
      BypassGovernanceRetention => 1,                 # OPTIONAL
      ContentLength             => 1,                 # OPTIONAL
      ContentMD5                => 'MyContentMD5',    # OPTIONAL
      MFA                       => 'MyMFA',           # OPTIONAL
      RequestPayer              => 'requester',       # OPTIONAL
    );

    # Results:
    my $Deleted        = $DeleteObjectsOutput->Deleted;
    my $Errors         = $DeleteObjectsOutput->Errors;
    my $RequestCharged = $DeleteObjectsOutput->RequestCharged;

    # Returns a L<Paws::S3::DeleteObjectsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteObjects>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 BypassGovernanceRetention => Bool

Specifies whether you want to delete this object even if it has a
Governance-type object lock in place. You must have sufficient
permissions to perform this operation.



=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str





=head2 B<REQUIRED> Delete => S3_Delete





=head2 MFA => Str

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.



=head2 RequestPayer => Str



Valid values are: C<"requester">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObjects in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

