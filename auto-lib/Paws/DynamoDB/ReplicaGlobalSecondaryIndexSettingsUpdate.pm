package Paws::DynamoDB::ReplicaGlobalSecondaryIndexSettingsUpdate;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedReadCapacityAutoScalingSettingsUpdate => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsUpdate');
  has ProvisionedReadCapacityUnits => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ReplicaGlobalSecondaryIndexSettingsUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ReplicaGlobalSecondaryIndexSettingsUpdate object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., ProvisionedReadCapacityUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ReplicaGlobalSecondaryIndexSettingsUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the settings of a global secondary index for a global table
that will be modified.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

  The name of the global secondary index. The name must be unique among
all other indexes on this table.


=head2 ProvisionedReadCapacityAutoScalingSettingsUpdate => L<Paws::DynamoDB::AutoScalingSettingsUpdate>

  Autoscaling settings for managing a global secondary index replica's
read capacity units.


=head2 ProvisionedReadCapacityUnits => Int

  The maximum number of strongly consistent reads consumed per second
before DynamoDB returns a C<ThrottlingException>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

