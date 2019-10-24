# Generated from json/callresult_class.tt

package Paws::SSM::DescribeActivationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Activation/;
  has ActivationList => (is => 'ro', isa => ArrayRef[SSM_Activation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ActivationList' => {
                                     'class' => 'Paws::SSM::Activation',
                                     'type' => 'ArrayRef[SSM_Activation]'
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

Paws::SSM::DescribeActivationsResult

=head1 ATTRIBUTES


=head2 ActivationList => ArrayRef[SSM_Activation]

A list of activations for your AWS account.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;