
package Paws::S3::DeleteObject;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::S3::Types qw//;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BypassGovernanceRetention => (is => 'ro', isa => Bool, predicate => 1);
  has Key => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MFA => (is => 'ro', isa => Str, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);
  has VersionId => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteObject');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}/{Key+}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::DeleteObjectOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'types' => {
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
               'Key' => {
                          'type' => 'Str'
                        },
               'VersionId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'Bucket' => 'Bucket',
                    'Key' => 'Key'
                  },
  'ParamInQuery' => {
                      'VersionId' => 'versionId'
                    },
  'ParamInHeader' => {
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

Paws::S3::DeleteObject - Arguments for method DeleteObject on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObject on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method DeleteObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObject.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $DeleteObjectOutput = $s3->DeleteObject(
      Bucket                    => 'MyBucketName',
      Key                       => 'MyObjectKey',
      BypassGovernanceRetention => 1,                      # OPTIONAL
      MFA                       => 'MyMFA',                # OPTIONAL
      RequestPayer              => 'requester',            # OPTIONAL
      VersionId                 => 'MyObjectVersionId',    # OPTIONAL
    );

    # Results:
    my $DeleteMarker   = $DeleteObjectOutput->DeleteMarker;
    my $RequestCharged = $DeleteObjectOutput->RequestCharged;
    my $VersionId      = $DeleteObjectOutput->VersionId;

    # Returns a L<Paws::S3::DeleteObjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/DeleteObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 BypassGovernanceRetention => Bool

Indicates whether Amazon S3 object lock should bypass governance-mode
restrictions to process this operation.



=head2 B<REQUIRED> Key => Str





=head2 MFA => Str

The concatenation of the authentication device's serial number, a
space, and the value that is displayed on your authentication device.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 VersionId => Str

VersionId used to reference a specific version of the object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObject in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

