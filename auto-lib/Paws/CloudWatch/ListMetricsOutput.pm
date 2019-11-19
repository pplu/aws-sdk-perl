# Generated from callresult_class.tt

package Paws::CloudWatch::ListMetricsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_Metric/;
  has Metrics => (is => 'ro', isa => ArrayRef[CloudWatch_Metric]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Metrics' => {
                              'type' => 'ArrayRef[CloudWatch_Metric]',
                              'class' => 'Paws::CloudWatch::Metric'
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

Paws::CloudWatch::ListMetricsOutput

=head1 ATTRIBUTES


=head2 Metrics => ArrayRef[CloudWatch_Metric]

The metrics.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.


=head2 _request_id => Str


=cut

