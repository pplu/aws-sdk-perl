
package Paws::S3::PutObjectRetention;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::S3::Types qw/S3_ObjectLockRetention/;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BypassGovernanceRetention => (is => 'ro', isa => Bool, predicate => 1);
  has ContentMD5 => (is => 'ro', isa => Str, predicate => 1);
  has Key => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RequestPayer => (is => 'ro', isa => Str, predicate => 1);
  has Retention => (is => 'ro', isa => S3_ObjectLockRetention, predicate => 1);
  has VersionId => (is => 'ro', isa => Str, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutObjectRetention');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}/{Key+}?retention');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::PutObjectRetentionOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'RequestPayer' => 'x-amz-request-payer',
                       'BypassGovernanceRetention' => 'x-amz-bypass-governance-retention'
                     },
  'ParamInURI' => {
                    'Key' => 'Key',
                    'Bucket' => 'Bucket'
                  },
  'AutoInHeader' => {
                      'ContentMD5' => {
                                        'header_name' => 'Content-MD5',
                                        'auto' => 'MD5'
                                      }
                    },
  'IsRequired' => {
                    'Key' => 1,
                    'Bucket' => 1
                  },
  'ParamInQuery' => {
                      'VersionId' => 'versionId'
                    },
  'types' => {
               'Retention' => {
                                'type' => 'S3_ObjectLockRetention',
                                'class' => 'Paws::S3::ObjectLockRetention'
                              },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'Key' => {
                          'type' => 'Str'
                        },
               'ContentMD5' => {
                                 'type' => 'Str'
                               },
               'BypassGovernanceRetention' => {
                                                'type' => 'Bool'
                                              },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'RequestPayer' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutObjectRetention - Arguments for method PutObjectRetention on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutObjectRetention on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutObjectRetention.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutObjectRetention.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $PutObjectRetentionOutput = $s3->PutObjectRetention(
      Bucket                    => 'MyBucketName',
      Key                       => 'MyObjectKey',
      BypassGovernanceRetention => 1,                 # OPTIONAL
      ContentMD5                => 'MyContentMD5',    # OPTIONAL
      RequestPayer              => 'requester',       # OPTIONAL
      Retention                 => {
        Mode => 'GOVERNANCE',    # values: GOVERNANCE, COMPLIANCE; OPTIONAL
        RetainUntilDate => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      VersionId => 'MyObjectVersionId',    # OPTIONAL
    );

    # Results:
    my $RequestCharged = $PutObjectRetentionOutput->RequestCharged;

    # Returns a L<Paws::S3::PutObjectRetentionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutObjectRetention>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The bucket that contains the object you want to apply this Object
Retention configuration to.



=head2 BypassGovernanceRetention => Bool

Indicates whether this operation should bypass Governance-mode
restrictions.



=head2 ContentMD5 => Str

The MD5 hash for the request body.



=head2 B<REQUIRED> Key => Str

The key name for the object that you want to apply this Object
Retention configuration to.



=head2 RequestPayer => Str



Valid values are: C<"requester">

=head2 Retention => S3_ObjectLockRetention

The container element for the Object Retention configuration.



=head2 VersionId => Str

The version ID for the object that you want to apply this Object
Retention configuration to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutObjectRetention in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

