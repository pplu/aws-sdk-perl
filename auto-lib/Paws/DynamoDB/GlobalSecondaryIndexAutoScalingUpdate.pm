package Paws::DynamoDB::GlobalSecondaryIndexAutoScalingUpdate;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str');
  has ProvisionedWriteCapacityAutoScalingUpdate => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsUpdate');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GlobalSecondaryIndexAutoScalingUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalSecondaryIndexAutoScalingUpdate object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., ProvisionedWriteCapacityAutoScalingUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalSecondaryIndexAutoScalingUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the auto scaling settings of a global secondary index for a
global table that will be modified.

=head1 ATTRIBUTES


=head2 IndexName => Str

  The name of the global secondary index.


=head2 ProvisionedWriteCapacityAutoScalingUpdate => L<Paws::DynamoDB::AutoScalingSettingsUpdate>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

