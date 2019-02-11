package Paws::DynamoDB::TransactWriteItem;
  use Moose;
  has ConditionCheck => (is => 'ro', isa => 'Paws::DynamoDB::ConditionCheck');
  has Delete => (is => 'ro', isa => 'Paws::DynamoDB::Delete');
  has Put => (is => 'ro', isa => 'Paws::DynamoDB::Put');
  has Update => (is => 'ro', isa => 'Paws::DynamoDB::Update');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TransactWriteItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::TransactWriteItem object:

  $service_obj->Method(Att1 => { ConditionCheck => $value, ..., Update => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::TransactWriteItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionCheck

=head1 DESCRIPTION

A list of requests that can perform update, put, delete, or check
operations on multiple items in one or more tables atomically.

=head1 ATTRIBUTES


=head2 ConditionCheck => L<Paws::DynamoDB::ConditionCheck>

  A request to perform a check item operation.


=head2 Delete => L<Paws::DynamoDB::Delete>

  A request to perform a C<DeleteItem> operation.


=head2 Put => L<Paws::DynamoDB::Put>

  A request to perform a C<PutItem> operation.


=head2 Update => L<Paws::DynamoDB::Update>

  A request to perform an C<UpdateItem> operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

