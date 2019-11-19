# Generated from default/object.tt
package Paws::Lightsail::MetricDatapoint;
  use Moo;
  use Types::Standard qw/Num Str/;
  use Paws::Lightsail::Types qw//;
  has Average => (is => 'ro', isa => Num);
  has Maximum => (is => 'ro', isa => Num);
  has Minimum => (is => 'ro', isa => Num);
  has SampleCount => (is => 'ro', isa => Num);
  has Sum => (is => 'ro', isa => Num);
  has Timestamp => (is => 'ro', isa => Str);
  has Unit => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Sum' => 'sum',
                       'Maximum' => 'maximum',
                       'Minimum' => 'minimum',
                       'Unit' => 'unit',
                       'Average' => 'average',
                       'Timestamp' => 'timestamp',
                       'SampleCount' => 'sampleCount'
                     },
  'types' => {
               'Unit' => {
                           'type' => 'Str'
                         },
               'Minimum' => {
                              'type' => 'Num'
                            },
               'Maximum' => {
                              'type' => 'Num'
                            },
               'Sum' => {
                          'type' => 'Num'
                        },
               'SampleCount' => {
                                  'type' => 'Num'
                                },
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'Average' => {
                              'type' => 'Num'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::MetricDatapoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::MetricDatapoint object:

  $service_obj->Method(Att1 => { Average => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::MetricDatapoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Average

=head1 DESCRIPTION

Describes the metric data point.

=head1 ATTRIBUTES


=head2 Average => Num

  The average.


=head2 Maximum => Num

  The maximum.


=head2 Minimum => Num

  The minimum.


=head2 SampleCount => Num

  The sample count.


=head2 Sum => Num

  The sum.


=head2 Timestamp => Str

  The timestamp (e.g., C<1479816991.349>).


=head2 Unit => Str

  The unit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

