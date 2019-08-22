
package Paws::DynamoDB::DescribeTimeToLiveOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_TimeToLiveDescription/;
  has TimeToLiveDescription => (is => 'ro', isa => DynamoDB_TimeToLiveDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TimeToLiveDescription' => {
                                                       'class' => 'Paws::DynamoDB::TimeToLiveDescription',
                                                       'type' => 'DynamoDB_TimeToLiveDescription'
                                                     }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveDescription => DynamoDB_TimeToLiveDescription




=head2 _request_id => Str


=cut

1;