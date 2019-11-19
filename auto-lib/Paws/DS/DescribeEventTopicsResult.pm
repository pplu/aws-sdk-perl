# Generated from json/callresult_class.tt

package Paws::DS::DescribeEventTopicsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_EventTopic/;
  has EventTopics => (is => 'ro', isa => ArrayRef[DS_EventTopic]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EventTopics' => {
                                  'type' => 'ArrayRef[DS_EventTopic]',
                                  'class' => 'Paws::DS::EventTopic'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeEventTopicsResult

=head1 ATTRIBUTES


=head2 EventTopics => ArrayRef[DS_EventTopic]

A list of SNS topic names that receive status messages from the
specified Directory ID.


=head2 _request_id => Str


=cut

1;