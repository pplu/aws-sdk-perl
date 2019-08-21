package Paws::DynamoDB::TransactWriteItem;
  use Moo;
  use Types::Standard qw//;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBDelete PawsDynamoDBPut PawsDynamoDBUpdate PawsDynamoDBConditionCheck/;
  has ConditionCheck => (is => 'ro', isa => PawsDynamoDBConditionCheck);
  has Delete => (is => 'ro', isa => PawsDynamoDBDelete);
  has Put => (is => 'ro', isa => PawsDynamoDBPut);
  has Update => (is => 'ro', isa => PawsDynamoDBUpdate);

  sub params_map {
    my $params1 = {
             'types' => {
                          'Delete' => {
                                        'class' => 'Paws::DynamoDB::Delete',
                                        'type' => 'PawsDynamoDBDelete'
                                      },
                          'Update' => {
                                        'class' => 'Paws::DynamoDB::Update',
                                        'type' => 'PawsDynamoDBUpdate'
                                      },
                          'ConditionCheck' => {
                                                'class' => 'Paws::DynamoDB::ConditionCheck',
                                                'type' => 'PawsDynamoDBConditionCheck'
                                              },
                          'Put' => {
                                     'class' => 'Paws::DynamoDB::Put',
                                     'type' => 'PawsDynamoDBPut'
                                   }
                        }
           };

    return $params1;
  }

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


=head2 ConditionCheck => PawsDynamoDBConditionCheck

  A request to perform a check item operation.


=head2 Delete => PawsDynamoDBDelete

  A request to perform a C<DeleteItem> operation.


=head2 Put => PawsDynamoDBPut

  A request to perform a C<PutItem> operation.


=head2 Update => PawsDynamoDBUpdate

  A request to perform an C<UpdateItem> operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

