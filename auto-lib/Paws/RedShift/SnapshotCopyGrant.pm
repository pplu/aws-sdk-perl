package Paws::RedShift::SnapshotCopyGrant;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SnapshotCopyGrantName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]', request_name => 'Tag', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::SnapshotCopyGrant

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::SnapshotCopyGrant object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::SnapshotCopyGrant object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

The snapshot copy grant that grants Amazon Redshift permission to
encrypt copied snapshots with the specified customer master key (CMK)
from AWS KMS in the destination region.

For more information about managing snapshot copy grants, go to Amazon
Redshift Database Encryption
(http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html)
in the I<Amazon Redshift Cluster Management Guide>.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

  The unique identifier of the customer master key (CMK) in AWS KMS to
which Amazon Redshift is granted permission.


=head2 SnapshotCopyGrantName => Str

  The name of the snapshot copy grant.


=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

  A list of tag instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

