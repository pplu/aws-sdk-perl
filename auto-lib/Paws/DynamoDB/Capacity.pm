package Paws::DynamoDB::Capacity;
  use Moose;
  has CapacityUnits => (is => 'ro', isa => 'Num');
  has ReadCapacityUnits => (is => 'ro', isa => 'Num');
  has WriteCapacityUnits => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::Capacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::Capacity object:

  $service_obj->Method(Att1 => { CapacityUnits => $value, ..., WriteCapacityUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::Capacity object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityUnits

=head1 DESCRIPTION

Represents the amount of provisioned throughput capacity consumed on a
table or an index.

=head1 ATTRIBUTES


=head2 CapacityUnits => Num

  The total number of capacity units consumed on a table or an index.


=head2 ReadCapacityUnits => Num

  The total number of read capacity units consumed on a table or an
index.


=head2 WriteCapacityUnits => Num

  The total number of write capacity units consumed on a table or an
index.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

