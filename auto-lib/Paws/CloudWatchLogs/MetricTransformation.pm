# Generated from default/object.tt
package Paws::CloudWatchLogs::MetricTransformation;
  use Moo;
  use Types::Standard qw/Num Str/;
  use Paws::CloudWatchLogs::Types qw//;
  has DefaultValue => (is => 'ro', isa => Num);
  has MetricName => (is => 'ro', isa => Str, required => 1);
  has MetricNamespace => (is => 'ro', isa => Str, required => 1);
  has MetricValue => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MetricValue' => {
                                  'type' => 'Str'
                                },
               'MetricNamespace' => {
                                      'type' => 'Str'
                                    },
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'DefaultValue' => {
                                   'type' => 'Num'
                                 }
             },
  'NameInRequest' => {
                       'MetricValue' => 'metricValue',
                       'MetricNamespace' => 'metricNamespace',
                       'MetricName' => 'metricName',
                       'DefaultValue' => 'defaultValue'
                     },
  'IsRequired' => {
                    'MetricValue' => 1,
                    'MetricNamespace' => 1,
                    'MetricName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::MetricTransformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::MetricTransformation object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., MetricValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::MetricTransformation object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

Indicates how to transform ingested log events to metric data in a
CloudWatch metric.

=head1 ATTRIBUTES


=head2 DefaultValue => Num

  (Optional) The value to emit when a filter pattern does not match a log
event. This value can be null.


=head2 B<REQUIRED> MetricName => Str

  The name of the CloudWatch metric.


=head2 B<REQUIRED> MetricNamespace => Str

  The namespace of the CloudWatch metric.


=head2 B<REQUIRED> MetricValue => Str

  The value to publish to the CloudWatch metric when a filter pattern
matches a log event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

