# Generated from callresult_class.tt

package Paws::CloudWatch::DescribeAlarmHistoryOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_AlarmHistoryItem/;
  has AlarmHistoryItems => (is => 'ro', isa => ArrayRef[CloudWatch_AlarmHistoryItem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AlarmHistoryItems' => {
                                        'type' => 'ArrayRef[CloudWatch_AlarmHistoryItem]',
                                        'class' => 'Paws::CloudWatch::AlarmHistoryItem'
                                      },
               'NextToken' => {
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

Paws::CloudWatch::DescribeAlarmHistoryOutput

=head1 ATTRIBUTES


=head2 AlarmHistoryItems => ArrayRef[CloudWatch_AlarmHistoryItem]

The alarm histories, in JSON format.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.


=head2 _request_id => Str


=cut

