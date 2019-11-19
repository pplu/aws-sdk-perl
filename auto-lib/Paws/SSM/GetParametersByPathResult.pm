# Generated from json/callresult_class.tt

package Paws::SSM::GetParametersByPathResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Parameter/;
  has NextToken => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[SSM_Parameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Parameters' => {
                                 'type' => 'ArrayRef[SSM_Parameter]',
                                 'class' => 'Paws::SSM::Parameter'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParametersByPathResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 Parameters => ArrayRef[SSM_Parameter]

A list of parameters found in the specified hierarchy.


=head2 _request_id => Str


=cut

1;