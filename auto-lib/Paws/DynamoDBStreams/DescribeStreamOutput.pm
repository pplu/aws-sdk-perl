# Generated from json/callresult_class.tt

package Paws::DynamoDBStreams::DescribeStreamOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDBStreams::Types qw/DynamoDBStreams_StreamDescription/;
  has StreamDescription => (is => 'ro', isa => DynamoDBStreams_StreamDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StreamDescription' => {
                                        'class' => 'Paws::DynamoDBStreams::StreamDescription',
                                        'type' => 'DynamoDBStreams_StreamDescription'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::DescribeStreamOutput

=head1 ATTRIBUTES


=head2 StreamDescription => DynamoDBStreams_StreamDescription

A complete description of the stream, including its creation date and
time, the DynamoDB table associated with the stream, the shard IDs
within the stream, and the beginning and ending sequence numbers of
stream records within the shards.


=head2 _request_id => Str


=cut

1;