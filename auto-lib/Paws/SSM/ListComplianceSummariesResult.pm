# Generated from json/callresult_class.tt

package Paws::SSM::ListComplianceSummariesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_ComplianceSummaryItem/;
  has ComplianceSummaryItems => (is => 'ro', isa => ArrayRef[SSM_ComplianceSummaryItem]);
  has NextToken => (is => 'ro', isa => Str);

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
               'ComplianceSummaryItems' => {
                                             'class' => 'Paws::SSM::ComplianceSummaryItem',
                                             'type' => 'ArrayRef[SSM_ComplianceSummaryItem]'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListComplianceSummariesResult

=head1 ATTRIBUTES


=head2 ComplianceSummaryItems => ArrayRef[SSM_ComplianceSummaryItem]

A list of compliant and non-compliant summary counts based on
compliance types. For example, this call returns State Manager
associations, patches, or custom compliance types according to the
filter criteria that you specified.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;