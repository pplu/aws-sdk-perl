# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::DescribeEventsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorksCM::Types qw/OpsWorksCM_ServerEvent/;
  has NextToken => (is => 'ro', isa => Str);
  has ServerEvents => (is => 'ro', isa => ArrayRef[OpsWorksCM_ServerEvent]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServerEvents' => {
                                   'type' => 'ArrayRef[OpsWorksCM_ServerEvent]',
                                   'class' => 'Paws::OpsWorksCM::ServerEvent'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeEventsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

NextToken is a string that is returned in some command responses. It
indicates that not all entries have been returned, and that you must
run at least one more request to get remaining items. To get remaining
results, call C<DescribeEvents> again, and assign the token from the
previous results as the value of the C<nextToken> parameter. If there
are no more results, the response object's C<nextToken> parameter value
is C<null>. Setting a C<nextToken> value that was not returned in your
previous results causes an C<InvalidNextTokenException> to occur.


=head2 ServerEvents => ArrayRef[OpsWorksCM_ServerEvent]

Contains the response to a C<DescribeEvents> request.


=head2 _request_id => Str


=cut

1;