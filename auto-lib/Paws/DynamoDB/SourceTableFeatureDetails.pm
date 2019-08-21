package Paws::DynamoDB::SourceTableFeatureDetails;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBGlobalSecondaryIndexInfo PawsDynamoDBTimeToLiveDescription PawsDynamoDBLocalSecondaryIndexInfo PawsDynamoDBStreamSpecification PawsDynamoDBSSEDescription/;
  has GlobalSecondaryIndexes => (is => 'ro', isa => ArrayRef[PawsDynamoDBGlobalSecondaryIndexInfo]);
  has LocalSecondaryIndexes => (is => 'ro', isa => ArrayRef[PawsDynamoDBLocalSecondaryIndexInfo]);
  has SSEDescription => (is => 'ro', isa => PawsDynamoDBSSEDescription);
  has StreamDescription => (is => 'ro', isa => PawsDynamoDBStreamSpecification);
  has TimeToLiveDescription => (is => 'ro', isa => PawsDynamoDBTimeToLiveDescription);

  sub params_map {
    my $params1 = {
             'types' => {
                          'TimeToLiveDescription' => {
                                                       'class' => 'Paws::DynamoDB::TimeToLiveDescription',
                                                       'type' => 'PawsDynamoDBTimeToLiveDescription'
                                                     },
                          'StreamDescription' => {
                                                   'class' => 'Paws::DynamoDB::StreamSpecification',
                                                   'type' => 'PawsDynamoDBStreamSpecification'
                                                 },
                          'SSEDescription' => {
                                                'class' => 'Paws::DynamoDB::SSEDescription',
                                                'type' => 'PawsDynamoDBSSEDescription'
                                              },
                          'GlobalSecondaryIndexes' => {
                                                        'class' => 'Paws::DynamoDB::GlobalSecondaryIndexInfo',
                                                        'type' => 'ArrayRef[PawsDynamoDBGlobalSecondaryIndexInfo]'
                                                      },
                          'LocalSecondaryIndexes' => {
                                                       'class' => 'Paws::DynamoDB::LocalSecondaryIndexInfo',
                                                       'type' => 'ArrayRef[PawsDynamoDBLocalSecondaryIndexInfo]'
                                                     }
                        }
           };

    return $params1;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::SourceTableFeatureDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::SourceTableFeatureDetails object:

  $service_obj->Method(Att1 => { GlobalSecondaryIndexes => $value, ..., TimeToLiveDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::SourceTableFeatureDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->GlobalSecondaryIndexes

=head1 DESCRIPTION

Contains the details of the features enabled on the table when the
backup was created. For example, LSIs, GSIs, streams, TTL.

=head1 ATTRIBUTES


=head2 GlobalSecondaryIndexes => ArrayRef[PawsDynamoDBGlobalSecondaryIndexInfo]

  Represents the GSI properties for the table when the backup was
created. It includes the IndexName, KeySchema, Projection and
ProvisionedThroughput for the GSIs on the table at the time of backup.


=head2 LocalSecondaryIndexes => ArrayRef[PawsDynamoDBLocalSecondaryIndexInfo]

  Represents the LSI properties for the table when the backup was
created. It includes the IndexName, KeySchema and Projection for the
LSIs on the table at the time of backup.


=head2 SSEDescription => PawsDynamoDBSSEDescription

  The description of the server-side encryption status on the table when
the backup was created.


=head2 StreamDescription => PawsDynamoDBStreamSpecification

  Stream settings on the table when the backup was created.


=head2 TimeToLiveDescription => PawsDynamoDBTimeToLiveDescription

  Time to Live settings on the table when the backup was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

