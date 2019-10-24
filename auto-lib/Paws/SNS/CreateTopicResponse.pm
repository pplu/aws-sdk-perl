# Generated from callresult_class.tt

package Paws::SNS::CreateTopicResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SNS::Types qw//;
  has TopicArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TopicArn' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::CreateTopicResponse

=head1 ATTRIBUTES


=head2 TopicArn => Str

The Amazon Resource Name (ARN) assigned to the created topic.


=head2 _request_id => Str


=cut

