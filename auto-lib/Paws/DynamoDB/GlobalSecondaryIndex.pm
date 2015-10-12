package Paws::DynamoDB::GlobalSecondaryIndex;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]', required => 1);
  has Projection => (is => 'ro', isa => 'Paws::DynamoDB::Projection', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughput', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GlobalSecondaryIndex

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalSecondaryIndex object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., ProvisionedThroughput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalSecondaryIndex object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 ATTRIBUTES

=head2 B<REQUIRED> IndexName => Str

  The name of the global secondary index. The name must be unique among
all other indexes on this table.

=head2 B<REQUIRED> KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

  The complete key schema for a global secondary index, which consists of
one or more pairs of attribute names and key types (C<HASH> or
C<RANGE>).

=head2 B<REQUIRED> Projection => L<Paws::DynamoDB::Projection>

  

=head2 B<REQUIRED> ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

