# Generated from json/callresult_class.tt

package Paws::Support::DescribeSeverityLevelsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Support::Types qw/Support_SeverityLevel/;
  has SeverityLevels => (is => 'ro', isa => ArrayRef[Support_SeverityLevel]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SeverityLevels' => 'severityLevels'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SeverityLevels' => {
                                     'class' => 'Paws::Support::SeverityLevel',
                                     'type' => 'ArrayRef[Support_SeverityLevel]'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeSeverityLevelsResponse

=head1 ATTRIBUTES


=head2 SeverityLevels => ArrayRef[Support_SeverityLevel]

The available severity levels for the support case. Available severity
levels are defined by your service level agreement with AWS.


=head2 _request_id => Str


=cut

1;