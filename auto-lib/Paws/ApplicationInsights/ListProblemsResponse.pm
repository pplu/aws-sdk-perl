# Generated from json/callresult_class.tt

package Paws::ApplicationInsights::ListProblemsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApplicationInsights::Types qw/ApplicationInsights_Problem/;
  has NextToken => (is => 'ro', isa => Str);
  has ProblemList => (is => 'ro', isa => ArrayRef[ApplicationInsights_Problem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProblemList' => {
                                  'class' => 'Paws::ApplicationInsights::Problem',
                                  'type' => 'ArrayRef[ApplicationInsights_Problem]'
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

Paws::ApplicationInsights::ListProblemsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ProblemList => ArrayRef[ApplicationInsights_Problem]

The list of problems.


=head2 _request_id => Str


=cut

1;