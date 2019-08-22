
package Paws::DynamoDB::UpdateTimeToLiveOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_TimeToLiveSpecification/;
  has TimeToLiveSpecification => (is => 'ro', isa => DynamoDB_TimeToLiveSpecification);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'TimeToLiveSpecification' => {
                                                         'class' => 'Paws::DynamoDB::TimeToLiveSpecification',
                                                         'type' => 'DynamoDB_TimeToLiveSpecification'
                                                       }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveSpecification => DynamoDB_TimeToLiveSpecification

Represents the output of an C<UpdateTimeToLive> operation.


=head2 _request_id => Str


=cut

1;