
package Paws::IoTAnalytics::ListPipelinesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_PipelineSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has PipelineSummaries => (is => 'ro', isa => ArrayRef[IoTAnalytics_PipelineSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'PipelineSummaries' => 'pipelineSummaries'
                     },
  'types' => {
               'PipelineSummaries' => {
                                        'type' => 'ArrayRef[IoTAnalytics_PipelineSummary]',
                                        'class' => 'Paws::IoTAnalytics::PipelineSummary'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::IoTAnalytics::ListPipelinesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 PipelineSummaries => ArrayRef[IoTAnalytics_PipelineSummary]

A list of "PipelineSummary" objects.


=head2 _request_id => Str


=cut

