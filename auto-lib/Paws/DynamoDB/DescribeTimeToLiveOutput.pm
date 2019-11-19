# Generated from json/callresult_class.tt

package Paws::DynamoDB::DescribeTimeToLiveOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_TimeToLiveDescription/;
  has TimeToLiveDescription => (is => 'ro', isa => DynamoDB_TimeToLiveDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TimeToLiveDescription' => {
                                            'type' => 'DynamoDB_TimeToLiveDescription',
                                            'class' => 'Paws::DynamoDB::TimeToLiveDescription'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeTimeToLiveOutput

=head1 ATTRIBUTES


=head2 TimeToLiveDescription => DynamoDB_TimeToLiveDescription




=head2 _request_id => Str


=cut

1;