# Generated from json/callresult_class.tt

package Paws::Personalize::GetSolutionMetricsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_Metrics/;
  has Metrics => (is => 'ro', isa => Personalize_Metrics);
  has SolutionVersionArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SolutionVersionArn' => 'solutionVersionArn',
                       'Metrics' => 'metrics'
                     },
  'types' => {
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       },
               'Metrics' => {
                              'class' => 'Paws::Personalize::Metrics',
                              'type' => 'Personalize_Metrics'
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

Paws::Personalize::GetSolutionMetricsResponse

=head1 ATTRIBUTES


=head2 Metrics => Personalize_Metrics

The metrics for the solution version.


=head2 SolutionVersionArn => Str

The same solution version ARN as specified in the request.


=head2 _request_id => Str


=cut

1;