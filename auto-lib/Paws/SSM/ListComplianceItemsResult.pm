# Generated from json/callresult_class.tt

package Paws::SSM::ListComplianceItemsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_ComplianceItem/;
  has ComplianceItems => (is => 'ro', isa => ArrayRef[SSM_ComplianceItem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ComplianceItems' => {
                                      'class' => 'Paws::SSM::ComplianceItem',
                                      'type' => 'ArrayRef[SSM_ComplianceItem]'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListComplianceItemsResult

=head1 ATTRIBUTES


=head2 ComplianceItems => ArrayRef[SSM_ComplianceItem]

A list of compliance information for the specified resource ID.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;