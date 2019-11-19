# Generated from json/callresult_class.tt

package Paws::Kinesis::DescribeStreamConsumerOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kinesis::Types qw/Kinesis_ConsumerDescription/;
  has ConsumerDescription => (is => 'ro', isa => Kinesis_ConsumerDescription, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConsumerDescription' => {
                                          'type' => 'Kinesis_ConsumerDescription',
                                          'class' => 'Paws::Kinesis::ConsumerDescription'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ConsumerDescription' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeStreamConsumerOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumerDescription => Kinesis_ConsumerDescription

An object that represents the details of the consumer.


=head2 _request_id => Str


=cut

1;