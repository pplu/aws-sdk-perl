
package Paws::DynamoDB::DescribeTimeToLiveOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBTimeToLiveDescription/;
  has TimeToLiveDescription => (is => 'ro', isa => PawsDynamoDBTimeToLiveDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TimeToLiveDescription' => {
                                                       'class' => 'Paws::DynamoDB::TimeToLiveDescription',
                                                       'type' => 'PawsDynamoDBTimeToLiveDescription'
                                                     }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveDescription => PawsDynamoDBTimeToLiveDescription




=head2 _request_id => Str


=cut

1;