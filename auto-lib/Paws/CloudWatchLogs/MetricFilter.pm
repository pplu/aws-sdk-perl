# Generated from default/object.tt
package Paws::CloudWatchLogs::MetricFilter;
  use Moo;
  use Types::Standard qw/Int Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_MetricTransformation/;
  has CreationTime => (is => 'ro', isa => Int);
  has FilterName => (is => 'ro', isa => Str);
  has FilterPattern => (is => 'ro', isa => Str);
  has LogGroupName => (is => 'ro', isa => Str);
  has MetricTransformations => (is => 'ro', isa => ArrayRef[CloudWatchLogs_MetricTransformation]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Int'
                                 },
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
                       'CreationTime' => 'creationTime',
                       'MetricTransformations' => 'metricTransformations',
                       'LogGroupName' => 'logGroupName',
                       'FilterPattern' => 'filterPattern',
                       'FilterName' => 'filterName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::MetricFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::MetricFilter object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., MetricTransformations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::MetricFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Metric filters express how CloudWatch Logs would extract metric
observations from ingested log events and transform them into metric
data in a CloudWatch metric.

=head1 ATTRIBUTES


=head2 CreationTime => Int

  The creation time of the metric filter, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 FilterName => Str

  The name of the metric filter.


=head2 FilterPattern => Str

  


=head2 LogGroupName => Str

  The name of the log group.


=head2 MetricTransformations => ArrayRef[CloudWatchLogs_MetricTransformation]

  The metric transformations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

