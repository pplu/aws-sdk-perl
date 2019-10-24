# Generated from json/callresult_class.tt

package Paws::Firehose::DescribeDeliveryStreamOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_DeliveryStreamDescription/;
  has DeliveryStreamDescription => (is => 'ro', isa => Firehose_DeliveryStreamDescription, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeliveryStreamDescription' => {
                                                'class' => 'Paws::Firehose::DeliveryStreamDescription',
                                                'type' => 'Firehose_DeliveryStreamDescription'
                                              }
             },
  'IsRequired' => {
                    'DeliveryStreamDescription' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Firehose::DescribeDeliveryStreamOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamDescription => Firehose_DeliveryStreamDescription

Information about the delivery stream.


=head2 _request_id => Str


=cut

1;