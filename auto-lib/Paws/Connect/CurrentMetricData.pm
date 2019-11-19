# Generated from default/object.tt
package Paws::Connect::CurrentMetricData;
  use Moo;
  use Types::Standard qw/Num/;
  use Paws::Connect::Types qw/Connect_CurrentMetric/;
  has Metric => (is => 'ro', isa => Connect_CurrentMetric);
  has Value => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Num'
                          },
               'Metric' => {
                             'class' => 'Paws::Connect::CurrentMetric',
                             'type' => 'Connect_CurrentMetric'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CurrentMetricData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::CurrentMetricData object:

  $service_obj->Method(Att1 => { Metric => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::CurrentMetricData object:

  $result = $service_obj->Method(...);
  $result->Att1->Metric

=head1 DESCRIPTION

Contains the data for a real-time metric.

=head1 ATTRIBUTES


=head2 Metric => Connect_CurrentMetric

  Information about the metric.


=head2 Value => Num

  The value of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

