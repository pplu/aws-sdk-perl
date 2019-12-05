package Paws::DynamoDB::UpdateReplicationGroupMemberAction;
  use Moose;
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaGlobalSecondaryIndex]');
  has KMSMasterKeyId => (is => 'ro', isa => 'Str');
  has ProvisionedThroughputOverride => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughputOverride');
  has RegionName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateReplicationGroupMemberAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::UpdateReplicationGroupMemberAction object:

  $service_obj->Method(Att1 => { GlobalSecondaryIndexes => $value, ..., RegionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::UpdateReplicationGroupMemberAction object:

  $result = $service_obj->Method(...);
  $result->Att1->GlobalSecondaryIndexes

=head1 DESCRIPTION

Represents a replica to be modified.

=head1 ATTRIBUTES


=head2 GlobalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::ReplicaGlobalSecondaryIndex>]

  Replica-specific global secondary index settings.


=head2 KMSMasterKeyId => Str

  The AWS KMS customer master key (CMK) of the replica that should be
used for AWS KMS encryption. To specify a CMK, use its key ID, Amazon
Resource Name (ARN), alias name, or alias ARN. Note that you should
only provide this parameter if the key is different from the default
DynamoDB KMS master key alias/aws/dynamodb.


=head2 ProvisionedThroughputOverride => L<Paws::DynamoDB::ProvisionedThroughputOverride>

  Replica-specific provisioned throughput. If not specified, uses the
source table's provisioned throughput settings.


=head2 B<REQUIRED> RegionName => Str

  The Region where the replica exists.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

