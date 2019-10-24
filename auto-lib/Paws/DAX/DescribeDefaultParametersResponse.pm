# Generated from json/callresult_class.tt

package Paws::DAX::DescribeDefaultParametersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_Parameter/;
  has NextToken => (is => 'ro', isa => Str);
  has Parameters => (is => 'ro', isa => ArrayRef[DAX_Parameter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Parameters' => {
                                 'class' => 'Paws::DAX::Parameter',
                                 'type' => 'ArrayRef[DAX_Parameter]'
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

Paws::DAX::DescribeDefaultParametersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 Parameters => ArrayRef[DAX_Parameter]

A list of parameters. Each element in the list represents one
parameter.


=head2 _request_id => Str


=cut

1;