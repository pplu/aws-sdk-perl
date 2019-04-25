package Paws::DynamoDB::CancellationReason;
  use Moose;
  has Code => (is => 'ro', isa => 'Str');
  has Item => (is => 'ro', isa => 'Paws::DynamoDB::AttributeMap');
  has Message => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::CancellationReason

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::CancellationReason object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::CancellationReason object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

An ordered list of errors for each item in the request which caused the
transaction to get cancelled. The values of the list are ordered
according to the ordering of the C<TransactWriteItems> request
parameter. If no error occurred for the associated item an error with a
Null code and Null message will be present.

=head1 ATTRIBUTES


=head2 Code => Str

  Status code for the result of the cancelled transaction.


=head2 Item => L<Paws::DynamoDB::AttributeMap>

  Item in the request which caused the transaction to get cancelled.


=head2 Message => Str

  Cancellation reason message description.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

