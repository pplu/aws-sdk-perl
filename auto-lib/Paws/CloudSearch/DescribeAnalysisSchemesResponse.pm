# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeAnalysisSchemesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudSearch::Types qw/CloudSearch_AnalysisSchemeStatus/;
  has AnalysisSchemes => (is => 'ro', isa => ArrayRef[CloudSearch_AnalysisSchemeStatus], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AnalysisSchemes' => {
                                      'class' => 'Paws::CloudSearch::AnalysisSchemeStatus',
                                      'type' => 'ArrayRef[CloudSearch_AnalysisSchemeStatus]'
                                    }
             },
  'IsRequired' => {
                    'AnalysisSchemes' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeAnalysisSchemesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisSchemes => ArrayRef[CloudSearch_AnalysisSchemeStatus]

The analysis scheme descriptions.


=head2 _request_id => Str


=cut

