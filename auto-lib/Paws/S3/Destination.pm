package Paws::S3::Destination;
  use Moose;
  has AccessControlTranslation => (is => 'ro', isa => 'Paws::S3::AccessControlTranslation');
  has Account => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::S3::EncryptionConfiguration');
  has Metrics => (is => 'ro', isa => 'Paws::S3::Metrics');
  has ReplicationTime => (is => 'ro', isa => 'Paws::S3::ReplicationTime');
  has StorageClass => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Destination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Destination object:

  $service_obj->Method(Att1 => { AccessControlTranslation => $value, ..., StorageClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Destination object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlTranslation

=head1 DESCRIPTION

Specifies information about where to publish analysis or configuration
results for an Amazon S3 bucket and S3 Replication Time Control (S3
RTC).

=head1 ATTRIBUTES


=head2 AccessControlTranslation => L<Paws::S3::AccessControlTranslation>

  Specify this only in a cross-account scenario (where source and
destination bucket owners are not the same), and you want to change
replica ownership to the AWS account that owns the destination bucket.
If this is not specified in the replication configuration, the replicas
are owned by same AWS account that owns the source object.


=head2 Account => Str

  Destination bucket owner account ID. In a cross-account scenario, if
you direct Amazon S3 to change replica ownership to the AWS account
that owns the destination bucket by specifying the
C<AccessControlTranslation> property, this is the account ID of the
destination bucket owner. For more information, see Replication
Additional Configuration: Changing the Replica Owner
(https://docs.aws.amazon.com/AmazonS3/latest/dev/replication-change-owner.html)
in the I<Amazon Simple Storage Service Developer Guide>.


=head2 B<REQUIRED> Bucket => Str

  The Amazon Resource Name (ARN) of the bucket where you want Amazon S3
to store the results.


=head2 EncryptionConfiguration => L<Paws::S3::EncryptionConfiguration>

  A container that provides information about encryption. If
C<SourceSelectionCriteria> is specified, you must specify this element.


=head2 Metrics => L<Paws::S3::Metrics>

  A container specifying replication metrics-related settings enabling
metrics and Amazon S3 events for S3 Replication Time Control (S3 RTC).
Must be specified together with a C<ReplicationTime> block.


=head2 ReplicationTime => L<Paws::S3::ReplicationTime>

  A container specifying S3 Replication Time Control (S3 RTC), including
whether S3 RTC is enabled and the time when all objects and operations
on objects must be replicated. Must be specified together with a
C<Metrics> block.


=head2 StorageClass => Str

  The storage class to use when replicating objects, such as standard or
reduced redundancy. By default, Amazon S3 uses the storage class of the
source object to create the object replica.

For valid values, see the C<StorageClass> element of the PUT Bucket
replication
(https://docs.aws.amazon.com/AmazonS3/latest/API/RESTBucketPUTreplication.html)
action in the I<Amazon Simple Storage Service API Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

