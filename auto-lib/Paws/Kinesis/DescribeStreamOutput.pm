# Generated from json/callresult_class.tt

package Paws::Kinesis::DescribeStreamOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kinesis::Types qw/Kinesis_StreamDescription/;
  has StreamDescription => (is => 'ro', isa => Kinesis_StreamDescription, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StreamDescription' => {
                                        'class' => 'Paws::Kinesis::StreamDescription',
                                        'type' => 'Kinesis_StreamDescription'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'StreamDescription' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeStreamOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamDescription => Kinesis_StreamDescription

The current status of the stream, the stream Amazon Resource Name
(ARN), an array of shard objects that comprise the stream, and whether
there are more shards available.


=head2 _request_id => Str


=cut

1;