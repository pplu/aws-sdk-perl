package Paws::DynamoDB::UpdateGlobalSecondaryIndexAction;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughput', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateGlobalSecondaryIndexAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::UpdateGlobalSecondaryIndexAction object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., ProvisionedThroughput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::UpdateGlobalSecondaryIndexAction object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the new provisioned throughput settings to be applied to a
global secondary index.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

  The name of the global secondary index to be updated.


=head2 B<REQUIRED> ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>

  Represents the provisioned throughput settings for the specified global
secondary index.

For current minimum and maximum provisioned throughput values, see
Limits
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
in the I<Amazon DynamoDB Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

