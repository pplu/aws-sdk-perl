# Generated from default/object.tt
package Paws::S3::Destination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_AccessControlTranslation S3_EncryptionConfiguration/;
  has AccessControlTranslation => (is => 'ro', isa => S3_AccessControlTranslation);
  has Account => (is => 'ro', isa => Str);
  has Bucket => (is => 'ro', isa => Str, required => 1);
  has EncryptionConfiguration => (is => 'ro', isa => S3_EncryptionConfiguration);
  has StorageClass => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EncryptionConfiguration' => {
                                              'class' => 'Paws::S3::EncryptionConfiguration',
                                              'type' => 'S3_EncryptionConfiguration'
                                            },
               'Bucket' => {
                             'type' => 'Str'
                           },
               'Account' => {
                              'type' => 'Str'
                            },
               'StorageClass' => {
                                   'type' => 'Str'
                                 },
               'AccessControlTranslation' => {
                                               'class' => 'Paws::S3::AccessControlTranslation',
                                               'type' => 'S3_AccessControlTranslation'
                                             }
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
results for an Amazon S3 bucket.

=head1 ATTRIBUTES


=head2 AccessControlTranslation => S3_AccessControlTranslation

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
destination bucket owner. For more information, see Cross-Region
Replication Additional Configuration: Change Replica Owner
(https://docs.aws.amazon.com/AmazonS3/latest/dev/crr-change-owner.html)
in the I<Amazon Simple Storage Service Developer Guide>.


=head2 B<REQUIRED> Bucket => Str

  The Amazon Resource Name (ARN) of the bucket where you want Amazon S3
to store replicas of the object identified by the rule.

A replication configuration can replicate objects to only one
destination bucket. If there are multiple rules in your replication
configuration, all rules must specify the same destination bucket.


=head2 EncryptionConfiguration => S3_EncryptionConfiguration

  A container that provides information about encryption. If
C<SourceSelectionCriteria> is specified, you must specify this element.


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

