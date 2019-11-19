# Generated from callresult_class.tt

package Paws::CloudWatch::GetMetricWidgetImageOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatch::Types qw//;
  has MetricWidgetImage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MetricWidgetImage' => {
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

Paws::CloudWatch::GetMetricWidgetImageOutput

=head1 ATTRIBUTES


=head2 MetricWidgetImage => Str

The image of the graph, in the output format specified.


=head2 _request_id => Str


=cut

