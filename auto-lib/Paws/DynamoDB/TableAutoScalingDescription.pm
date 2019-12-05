package Paws::DynamoDB::TableAutoScalingDescription;
  use Moose;
  has Replicas => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaAutoScalingDescription]');
  has TableName => (is => 'ro', isa => 'Str');
  has TableStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TableAutoScalingDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::TableAutoScalingDescription object:

  $service_obj->Method(Att1 => { Replicas => $value, ..., TableStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::TableAutoScalingDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Replicas

=head1 DESCRIPTION

Represents the auto scaling configuration for a global table.

=head1 ATTRIBUTES


=head2 Replicas => ArrayRef[L<Paws::DynamoDB::ReplicaAutoScalingDescription>]

  Represents replicas of the global table.


=head2 TableName => Str

  The name of the table.


=head2 TableStatus => Str

  The current state of the table:

=over

=item *

C<CREATING> - The table is being created.

=item *

C<UPDATING> - The table is being updated.

=item *

C<DELETING> - The table is being deleted.

=item *

C<ACTIVE> - The table is ready for use.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

