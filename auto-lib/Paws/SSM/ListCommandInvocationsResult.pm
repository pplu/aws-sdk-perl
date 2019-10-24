# Generated from json/callresult_class.tt

package Paws::SSM::ListCommandInvocationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_CommandInvocation/;
  has CommandInvocations => (is => 'ro', isa => ArrayRef[SSM_CommandInvocation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CommandInvocations' => {
                                         'class' => 'Paws::SSM::CommandInvocation',
                                         'type' => 'ArrayRef[SSM_CommandInvocation]'
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

Paws::SSM::ListCommandInvocationsResult

=head1 ATTRIBUTES


=head2 CommandInvocations => ArrayRef[SSM_CommandInvocation]

(Optional) A list of all invocations.


=head2 NextToken => Str

(Optional) The token for the next set of items to return. (You received
this token from a previous call.)


=head2 _request_id => Str


=cut

1;