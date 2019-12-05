package Paws::DynamoDB::ReplicaDescription;
  use Moose;
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaGlobalSecondaryIndexDescription]');
  has KMSMasterKeyId => (is => 'ro', isa => 'Str');
  has ProvisionedThroughputOverride => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughputOverride');
  has RegionName => (is => 'ro', isa => 'Str');
  has ReplicaStatus => (is => 'ro', isa => 'Str');
  has ReplicaStatusDescription => (is => 'ro', isa => 'Str');
  has ReplicaStatusPercentProgress => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ReplicaDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ReplicaDescription object:

  $service_obj->Method(Att1 => { GlobalSecondaryIndexes => $value, ..., ReplicaStatusPercentProgress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ReplicaDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->GlobalSecondaryIndexes

=head1 DESCRIPTION

Contains the details of the replica.

=head1 ATTRIBUTES


=head2 GlobalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::ReplicaGlobalSecondaryIndexDescription>]

  Replica-specific global secondary index settings.


=head2 KMSMasterKeyId => Str

  The AWS KMS customer master key (CMK) of the replica that will be used
for AWS KMS encryption.


=head2 ProvisionedThroughputOverride => L<Paws::DynamoDB::ProvisionedThroughputOverride>

  Replica-specific provisioned throughput. If not described, uses the
source table's provisioned throughput settings.


=head2 RegionName => Str

  The name of the Region.


=head2 ReplicaStatus => Str

  The current state of the replica:

=over

=item *

C<CREATING> - The replica is being created.

=item *

C<UPDATING> - The replica is being updated.

=item *

C<DELETING> - The replica is being deleted.

=item *

C<ACTIVE> - The replica is ready for use.

=back



=head2 ReplicaStatusDescription => Str

  Detailed information about the replica status.


=head2 ReplicaStatusPercentProgress => Str

  Specifies the progress of a Create, Update, or Delete action on the
replica as a percentage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

