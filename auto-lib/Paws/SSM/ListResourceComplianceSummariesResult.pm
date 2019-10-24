# Generated from json/callresult_class.tt

package Paws::SSM::ListResourceComplianceSummariesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_ResourceComplianceSummaryItem/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceComplianceSummaryItems => (is => 'ro', isa => ArrayRef[SSM_ResourceComplianceSummaryItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceComplianceSummaryItems' => {
                                                     'class' => 'Paws::SSM::ResourceComplianceSummaryItem',
                                                     'type' => 'ArrayRef[SSM_ResourceComplianceSummaryItem]'
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

Paws::SSM::ListResourceComplianceSummariesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 ResourceComplianceSummaryItems => ArrayRef[SSM_ResourceComplianceSummaryItem]

A summary count for specified or targeted managed instances. Summary
count includes information about compliant and non-compliant State
Manager associations, patch status, or custom items according to the
filter criteria that you specify.


=head2 _request_id => Str


=cut

1;