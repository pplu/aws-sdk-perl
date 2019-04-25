package Paws::S3::Destination;
  use Moose;
  has AccessControlTranslation => (is => 'ro', isa => 'Paws::S3::AccessControlTranslation');
  has Account => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::S3::EncryptionConfiguration');
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

A container for information about the replication destination.

=head1 ATTRIBUTES


=head2 AccessControlTranslation => L<Paws::S3::AccessControlTranslation>

  A container for information about access control for replicas.

Use this element only in a cross-account scenario where source and
destination bucket owners are not the same to change replica ownership
to the AWS account that owns the destination bucket. If you don't add
this element to the replication configuration, the replicas are owned
by same AWS account that owns the source object.


=head2 Account => Str

  The account ID of the destination bucket. Currently, Amazon S3 verifies
this value only if Access Control Translation is enabled.

In a cross-account scenario, if you change replica ownership to the AWS
account that owns the destination bucket by adding the
C<AccessControlTranslation> element, this is the account ID of the
owner of the destination bucket.


=head2 B<REQUIRED> Bucket => Str

  The Amazon Resource Name (ARN) of the bucket where you want Amazon S3
to store replicas of the object identified by the rule.

If there are multiple rules in your replication configuration, all
rules must specify the same bucket as the destination. A replication
configuration can replicate objects to only one destination bucket.


=head2 EncryptionConfiguration => L<Paws::S3::EncryptionConfiguration>

  A container that provides information about encryption. If
C<SourceSelectionCriteria> is specified, you must specify this element.


=head2 StorageClass => Str

  The class of storage used to store the object. By default Amazon S3
uses storage class of the source object when creating a replica.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

