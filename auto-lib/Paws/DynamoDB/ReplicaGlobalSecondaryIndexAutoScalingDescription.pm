package Paws::DynamoDB::ReplicaGlobalSecondaryIndexAutoScalingDescription;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str');
  has IndexStatus => (is => 'ro', isa => 'Str');
  has ProvisionedReadCapacityAutoScalingSettings => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsDescription');
  has ProvisionedWriteCapacityAutoScalingSettings => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsDescription');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ReplicaGlobalSecondaryIndexAutoScalingDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ReplicaGlobalSecondaryIndexAutoScalingDescription object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., ProvisionedWriteCapacityAutoScalingSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ReplicaGlobalSecondaryIndexAutoScalingDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the auto scaling configuration for a replica global
secondary index.

=head1 ATTRIBUTES


=head2 IndexName => Str

  The name of the global secondary index.


=head2 IndexStatus => Str

  The current state of the replica global secondary index:

=over

=item *

C<CREATING> - The index is being created.

=item *

C<UPDATING> - The index is being updated.

=item *

C<DELETING> - The index is being deleted.

=item *

C<ACTIVE> - The index is ready for use.

=back



=head2 ProvisionedReadCapacityAutoScalingSettings => L<Paws::DynamoDB::AutoScalingSettingsDescription>

  


=head2 ProvisionedWriteCapacityAutoScalingSettings => L<Paws::DynamoDB::AutoScalingSettingsDescription>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

