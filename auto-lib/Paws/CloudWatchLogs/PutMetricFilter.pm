# Generated from json/callargs_class.tt

package Paws::CloudWatchLogs::PutMetricFilter;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_MetricTransformation/;
  has FilterName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FilterPattern => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LogGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MetricTransformations => (is => 'ro', isa => ArrayRef[CloudWatchLogs_MetricTransformation], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutMetricFilter');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricTransformations' => {
                                            'class' => 'Paws::CloudWatchLogs::MetricTransformation',
                                            'type' => 'ArrayRef[CloudWatchLogs_MetricTransformation]'
                                          },
               'LogGroupName' => {
                                   'type' => 'Str'
                                 },
               'FilterPattern' => {
                                    'type' => 'Str'
                                  },
               'FilterName' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'MetricTransformations' => 'metricTransformations',
                       'LogGroupName' => 'logGroupName',
                       'FilterPattern' => 'filterPattern',
                       'FilterName' => 'filterName'
                     },
  'IsRequired' => {
                    'MetricTransformations' => 1,
                    'LogGroupName' => 1,
                    'FilterPattern' => 1,
                    'FilterName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutMetricFilter - Arguments for method PutMetricFilter on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetricFilter on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutMetricFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetricFilter.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->PutMetricFilter(
      FilterName            => 'MyFilterName',
      FilterPattern         => 'MyFilterPattern',
      LogGroupName          => 'MyLogGroupName',
      MetricTransformations => [
        {
          MetricName      => 'MyMetricName',         # max: 255
          MetricNamespace => 'MyMetricNamespace',    # max: 255
          MetricValue     => 'MyMetricValue',        # max: 100
          DefaultValue    => 1,                      # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutMetricFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FilterName => Str

A name for the metric filter.



=head2 B<REQUIRED> FilterPattern => Str

A filter pattern for extracting metric data out of ingested log events.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 B<REQUIRED> MetricTransformations => ArrayRef[CloudWatchLogs_MetricTransformation]

A collection of information that defines how metric data gets emitted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetricFilter in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

