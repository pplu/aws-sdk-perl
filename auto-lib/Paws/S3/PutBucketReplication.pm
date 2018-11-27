
package Paws::S3::PutBucketReplication;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ContentLength => (is => 'ro', isa => 'Int', header_name => 'Content-Length', traits => ['ParamInHeader']);
  has ContentMD5 => (is => 'ro', isa => 'Str', header_name => 'Content-MD5', auto => 'MD5', traits => ['AutoInHeader']);
  has ReplicationConfiguration => (is => 'ro', isa => 'Paws::S3::ReplicationConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketReplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?replication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketReplication - Arguments for method PutBucketReplication on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketReplication on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketReplication.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    $s3->PutBucketReplication(
      Bucket                   => 'MyBucketName',
      ReplicationConfiguration => {
        Role  => 'MyRole',
        Rules => [
          {
            Destination => {
              Bucket                   => 'MyBucketName',
              AccessControlTranslation => {
                Owner => 'Destination',    # values: Destination

              },    # OPTIONAL
              Account                 => 'MyAccountId',    # OPTIONAL
              EncryptionConfiguration => {
                ReplicaKmsKeyID => 'MyReplicaKmsKeyID',    # OPTIONAL
              },    # OPTIONAL
              StorageClass => 'STANDARD'
              , # values: STANDARD, REDUCED_REDUNDANCY, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, GLACIER; OPTIONAL
            },
            Status                  => 'Enabled',    # values: Enabled, Disabled
            DeleteMarkerReplication => {
              Status => 'Enabled',    # values: Enabled, Disabled; OPTIONAL
            },    # OPTIONAL
            Filter => {
              And => {
                Prefix => 'MyPrefix',    # OPTIONAL
                Tags   => [
                  {
                    Key   => 'MyObjectKey',    # min: 1
                    Value => 'MyValue',

                  },
                  ...                          # OPTIONAL
                ],                             # OPTIONAL
              },    # OPTIONAL
              Prefix => 'MyPrefix',    # OPTIONAL
              Tag    => {
                Key   => 'MyObjectKey',    # min: 1
                Value => 'MyValue',

              },    # OPTIONAL
            },    # OPTIONAL
            ID                      => 'MyID',        # OPTIONAL
            Prefix                  => 'MyPrefix',    # OPTIONAL
            Priority                => 1,             # OPTIONAL
            SourceSelectionCriteria => {
              SseKmsEncryptedObjects => {
                Status => 'Enabled',    # values: Enabled, Disabled

              },    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],

      },
      ContentLength => 1,                 # OPTIONAL
      ContentMD5    => 'MyContentMD5',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketReplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 ContentLength => Int

Size of the body in bytes.



=head2 ContentMD5 => Str





=head2 B<REQUIRED> ReplicationConfiguration => L<Paws::S3::ReplicationConfiguration>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketReplication in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

