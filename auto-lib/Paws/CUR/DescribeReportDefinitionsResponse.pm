# Generated from json/callresult_class.tt

package Paws::CUR::DescribeReportDefinitionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CUR::Types qw/CUR_ReportDefinition/;
  has NextToken => (is => 'ro', isa => Str);
  has ReportDefinitions => (is => 'ro', isa => ArrayRef[CUR_ReportDefinition]);

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
               'ReportDefinitions' => {
                                        'class' => 'Paws::CUR::ReportDefinition',
                                        'type' => 'ArrayRef[CUR_ReportDefinition]'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CUR::DescribeReportDefinitionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ReportDefinitions => ArrayRef[CUR_ReportDefinition]

A list of AWS Cost and Usage reports owned by the account.


=head2 _request_id => Str


=cut

1;