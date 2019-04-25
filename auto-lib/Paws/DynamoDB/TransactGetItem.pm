package Paws::DynamoDB::TransactGetItem;
  use Moose;
  has Get => (is => 'ro', isa => 'Paws::DynamoDB::Get', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TransactGetItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::TransactGetItem object:

  $service_obj->Method(Att1 => { Get => $value, ..., Get => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::TransactGetItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Get

=head1 DESCRIPTION

Specifies an item to be retrieved as part of the transaction.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Get => L<Paws::DynamoDB::Get>

  Contains the primary key that identifies the item to get, together with
the name of the table that contains the item, and optionally the
specific attributes of the item to retrieve.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

