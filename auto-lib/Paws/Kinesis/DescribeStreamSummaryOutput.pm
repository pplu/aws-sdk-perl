# Generated from json/callresult_class.tt

package Paws::Kinesis::DescribeStreamSummaryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kinesis::Types qw/Kinesis_StreamDescriptionSummary/;
  has StreamDescriptionSummary => (is => 'ro', isa => Kinesis_StreamDescriptionSummary, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StreamDescriptionSummary' => {
                                               'class' => 'Paws::Kinesis::StreamDescriptionSummary',
                                               'type' => 'Kinesis_StreamDescriptionSummary'
                                             }
             },
  'IsRequired' => {
                    'StreamDescriptionSummary' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeStreamSummaryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamDescriptionSummary => Kinesis_StreamDescriptionSummary

A StreamDescriptionSummary containing information about the stream.


=head2 _request_id => Str


=cut

1;