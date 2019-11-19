# Generated from json/callresult_class.tt

package Paws::SSM::GetOpsSummaryResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_OpsEntity/;
  has Entities => (is => 'ro', isa => ArrayRef[SSM_OpsEntity]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Entities' => {
                               'type' => 'ArrayRef[SSM_OpsEntity]',
                               'class' => 'Paws::SSM::OpsEntity'
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

Paws::SSM::GetOpsSummaryResult

=head1 ATTRIBUTES


=head2 Entities => ArrayRef[SSM_OpsEntity]

The list of aggregated and filtered OpsItems.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;