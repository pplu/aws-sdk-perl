# Generated from json/callresult_class.tt

package Paws::SSM::DescribeSessionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Session/;
  has NextToken => (is => 'ro', isa => Str);
  has Sessions => (is => 'ro', isa => ArrayRef[SSM_Session]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Sessions' => {
                               'class' => 'Paws::SSM::Session',
                               'type' => 'ArrayRef[SSM_Session]'
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

Paws::SSM::DescribeSessionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)


=head2 Sessions => ArrayRef[SSM_Session]

A list of sessions meeting the request parameters.


=head2 _request_id => Str


=cut

1;