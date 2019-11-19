# Generated from default/object.tt
package Paws::Forecast::Statistics;
  use Moo;
  use Types::Standard qw/Num Int Str/;
  use Paws::Forecast::Types qw//;
  has Avg => (is => 'ro', isa => Num);
  has Count => (is => 'ro', isa => Int);
  has CountDistinct => (is => 'ro', isa => Int);
  has CountNan => (is => 'ro', isa => Int);
  has CountNull => (is => 'ro', isa => Int);
  has Max => (is => 'ro', isa => Str);
  has Min => (is => 'ro', isa => Str);
  has Stddev => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CountNull' => {
                                'type' => 'Int'
                              },
               'CountDistinct' => {
                                    'type' => 'Int'
                                  },
               'Stddev' => {
                             'type' => 'Num'
                           },
               'Count' => {
                            'type' => 'Int'
                          },
               'Min' => {
                          'type' => 'Str'
                        },
               'CountNan' => {
                               'type' => 'Int'
                             },
               'Max' => {
                          'type' => 'Str'
                        },
               'Avg' => {
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

Paws::Forecast::Statistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::Statistics object:

  $service_obj->Method(Att1 => { Avg => $value, ..., Stddev => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::Statistics object:

  $result = $service_obj->Method(...);
  $result->Att1->Avg

=head1 DESCRIPTION

Provides statistics for each data field imported to an Amazon Forecast
dataset with the CreateDatasetImportJob operation.

=head1 ATTRIBUTES


=head2 Avg => Num

  For a numeric field, the average value in the field.


=head2 Count => Int

  The number of values in the field.


=head2 CountDistinct => Int

  The number of distinct values in the field.


=head2 CountNan => Int

  The number of NAN (not a number) values in the field.


=head2 CountNull => Int

  The number of null values in the field.


=head2 Max => Str

  For a numeric field, the maximum value in the field.


=head2 Min => Str

  For a numeric field, the minimum value in the field.


=head2 Stddev => Num

  For a numeric field, the standard deviation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

