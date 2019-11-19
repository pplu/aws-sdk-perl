# Generated from json/callresult_class.tt

package Paws::Support::DescribeCasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Support::Types qw/Support_CaseDetails/;
  has Cases => (is => 'ro', isa => ArrayRef[Support_CaseDetails]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Cases' => 'cases',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Cases' => {
                            'type' => 'ArrayRef[Support_CaseDetails]',
                            'class' => 'Paws::Support::CaseDetails'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeCasesResponse

=head1 ATTRIBUTES


=head2 Cases => ArrayRef[Support_CaseDetails]

The details for the cases that match the request.


=head2 NextToken => Str

A resumption point for pagination.


=head2 _request_id => Str


=cut

1;