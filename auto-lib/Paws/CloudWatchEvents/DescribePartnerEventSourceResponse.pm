# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::DescribePartnerEventSourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Arn' => {
                          'type' => 'Str'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribePartnerEventSourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the event source.


=head2 Name => Str

The name of the event source.


=head2 _request_id => Str


=cut

1;