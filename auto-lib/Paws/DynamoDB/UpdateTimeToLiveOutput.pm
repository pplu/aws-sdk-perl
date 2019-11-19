# Generated from json/callresult_class.tt

package Paws::DynamoDB::UpdateTimeToLiveOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_TimeToLiveSpecification/;
  has TimeToLiveSpecification => (is => 'ro', isa => DynamoDB_TimeToLiveSpecification);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TimeToLiveSpecification' => {
                                              'class' => 'Paws::DynamoDB::TimeToLiveSpecification',
                                              'type' => 'DynamoDB_TimeToLiveSpecification'
                                            }
             }
}
;
    return $Params_map;
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