# Generated from json/callresult_class.tt

package Paws::SSM::GetParameterHistoryResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_ParameterHistory/;
  has NextToken => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[SSM_ParameterHistory]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::SSM::ParameterHistory',
                                 'type' => 'ArrayRef[SSM_ParameterHistory]'
                               },
               'NextToken' => {
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

Paws::SSM::GetParameterHistoryResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Parameters => ArrayRef[SSM_ParameterHistory]

A list of parameters returned by the request.


=head2 _request_id => Str


=cut

1;