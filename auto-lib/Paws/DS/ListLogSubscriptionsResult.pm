# Generated from json/callresult_class.tt

package Paws::DS::ListLogSubscriptionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_LogSubscription/;
  has LogSubscriptions => (is => 'ro', isa => ArrayRef[DS_LogSubscription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'LogSubscriptions' => {
                                       'type' => 'ArrayRef[DS_LogSubscription]',
                                       'class' => 'Paws::DS::LogSubscription'
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

Paws::DS::ListLogSubscriptionsResult

=head1 ATTRIBUTES


=head2 LogSubscriptions => ArrayRef[DS_LogSubscription]

A list of active LogSubscription objects for calling the AWS account.


=head2 NextToken => Str

The token for the next set of items to return.


=head2 _request_id => Str


=cut

1;