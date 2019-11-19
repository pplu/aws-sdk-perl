# Generated from callresult_class.tt

package Paws::CloudSearch::DefineAnalysisSchemeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_AnalysisSchemeStatus/;
  has AnalysisScheme => (is => 'ro', isa => CloudSearch_AnalysisSchemeStatus, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'AnalysisScheme' => 1
                  },
  'types' => {
               'AnalysisScheme' => {
                                     'class' => 'Paws::CloudSearch::AnalysisSchemeStatus',
                                     'type' => 'CloudSearch_AnalysisSchemeStatus'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DefineAnalysisSchemeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisScheme => CloudSearch_AnalysisSchemeStatus




=head2 _request_id => Str


=cut

