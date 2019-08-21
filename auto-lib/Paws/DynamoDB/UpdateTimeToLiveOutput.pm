
package Paws::DynamoDB::UpdateTimeToLiveOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::TypeLibrary qw/PawsDynamoDBTimeToLiveSpecification/;
  has TimeToLiveSpecification => (is => 'ro', isa => PawsDynamoDBTimeToLiveSpecification);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TimeToLiveSpecification' => {
                                                         'class' => 'Paws::DynamoDB::TimeToLiveSpecification',
                                                         'type' => 'PawsDynamoDBTimeToLiveSpecification'
                                                       }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveSpecification => PawsDynamoDBTimeToLiveSpecification

Represents the output of an C<UpdateTimeToLive> operation.


=head2 _request_id => Str


=cut

1;