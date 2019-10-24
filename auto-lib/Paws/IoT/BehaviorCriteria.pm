# Generated from default/object.tt
package Paws::IoT::BehaviorCriteria;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_StatisticalThreshold IoT_MetricValue/;
  has ComparisonOperator => (is => 'ro', isa => Str);
  has ConsecutiveDatapointsToAlarm => (is => 'ro', isa => Int);
  has ConsecutiveDatapointsToClear => (is => 'ro', isa => Int);
  has DurationSeconds => (is => 'ro', isa => Int);
  has StatisticalThreshold => (is => 'ro', isa => IoT_StatisticalThreshold);
  has Value => (is => 'ro', isa => IoT_MetricValue);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConsecutiveDatapointsToClear' => {
                                                   'type' => 'Int'
                                                 },
               'Value' => {
                            'class' => 'Paws::IoT::MetricValue',
                            'type' => 'IoT_MetricValue'
                          },
               'DurationSeconds' => {
                                      'type' => 'Int'
                                    },
               'StatisticalThreshold' => {
                                           'class' => 'Paws::IoT::StatisticalThreshold',
                                           'type' => 'IoT_StatisticalThreshold'
                                         },
               'ConsecutiveDatapointsToAlarm' => {
                                                   'type' => 'Int'
                                                 },
               'ComparisonOperator' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'ConsecutiveDatapointsToClear' => 'consecutiveDatapointsToClear',
                       'Value' => 'value',
                       'DurationSeconds' => 'durationSeconds',
                       'StatisticalThreshold' => 'statisticalThreshold',
                       'ConsecutiveDatapointsToAlarm' => 'consecutiveDatapointsToAlarm',
                       'ComparisonOperator' => 'comparisonOperator'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::BehaviorCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::BehaviorCriteria object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::BehaviorCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

The criteria by which the behavior is determined to be normal.

=head1 ATTRIBUTES


=head2 ComparisonOperator => Str

  The operator that relates the thing measured (C<metric>) to the
criteria (containing a C<value> or C<statisticalThreshold>).


=head2 ConsecutiveDatapointsToAlarm => Int

  If a device is in violation of the behavior for the specified number of
consecutive datapoints, an alarm occurs. If not specified, the default
is 1.


=head2 ConsecutiveDatapointsToClear => Int

  If an alarm has occurred and the offending device is no longer in
violation of the behavior for the specified number of consecutive
datapoints, the alarm is cleared. If not specified, the default is 1.


=head2 DurationSeconds => Int

  Use this to specify the time duration over which the behavior is
evaluated, for those criteria which have a time dimension (for example,
C<NUM_MESSAGES_SENT>). For a C<statisticalThreshhold> metric
comparison, measurements from all devices are accumulated over this
time duration before being used to calculate percentiles, and later,
measurements from an individual device are also accumulated over this
time duration before being given a percentile rank.


=head2 StatisticalThreshold => IoT_StatisticalThreshold

  A statistical ranking (percentile) which indicates a threshold value by
which a behavior is determined to be in compliance or in violation of
the behavior.


=head2 Value => IoT_MetricValue

  The value to be compared with the C<metric>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

