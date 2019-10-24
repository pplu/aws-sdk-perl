# Generated from default/object.tt
package Paws::DynamoDB::WriteRequest;
  use Moo;
  use Types::Standard qw//;
  use Paws::DynamoDB::Types qw/DynamoDB_PutRequest DynamoDB_DeleteRequest/;
  has DeleteRequest => (is => 'ro', isa => DynamoDB_DeleteRequest);
  has PutRequest => (is => 'ro', isa => DynamoDB_PutRequest);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PutRequest' => {
                                 'class' => 'Paws::DynamoDB::PutRequest',
                                 'type' => 'DynamoDB_PutRequest'
                               },
               'DeleteRequest' => {
                                    'class' => 'Paws::DynamoDB::DeleteRequest',
                                    'type' => 'DynamoDB_DeleteRequest'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::WriteRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::WriteRequest object:

  $service_obj->Method(Att1 => { DeleteRequest => $value, ..., PutRequest => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::WriteRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteRequest

=head1 DESCRIPTION

Represents an operation to perform - either C<DeleteItem> or
C<PutItem>. You can only request one of these operations, not both, in
a single C<WriteRequest>. If you do need to perform both of these
operations, you will need to provide two separate C<WriteRequest>
objects.

=head1 ATTRIBUTES


=head2 DeleteRequest => DynamoDB_DeleteRequest

  A request to perform a C<DeleteItem> operation.


=head2 PutRequest => DynamoDB_PutRequest

  A request to perform a C<PutItem> operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

