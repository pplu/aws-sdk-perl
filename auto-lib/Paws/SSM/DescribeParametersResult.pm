# Generated from json/callresult_class.tt

package Paws::SSM::DescribeParametersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_ParameterMetadata/;
  has NextToken => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[SSM_ParameterMetadata]);

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
                                 'type' => 'ArrayRef[SSM_ParameterMetadata]',
                                 'class' => 'Paws::SSM::ParameterMetadata'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeParametersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 Parameters => ArrayRef[SSM_ParameterMetadata]

Parameters returned by the request.


=head2 _request_id => Str


=cut

1;