
package Paws::DynamoDB::DescribeTimeToLiveOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Type::Utils qw/class_type/;
    my $TimeToLiveDescription = class_type 'Paws::DynamoDB::TimeToLiveDescription';
  
  has TimeToLiveDescription => (is => 'ro', isa => $TimeToLiveDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TimeToLiveDescription' => {
                                                       'class' => 'Paws::DynamoDB::TimeToLiveDescription',
                                                       'type' => '$TimeToLiveDescription'
                                                     }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveDescription => $TimeToLiveDescription




=head2 _request_id => Str


=cut

1;