# Generated from default/object.tt
package Paws::Connect::Threshold;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::Connect::Types qw//;
  has Comparison => (is => 'ro', isa => Str);
  has ThresholdValue => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ThresholdValue' => {
                                     'type' => 'Num'
                                   },
               'Comparison' => {
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

Paws::Connect::Threshold

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::Threshold object:

  $service_obj->Method(Att1 => { Comparison => $value, ..., ThresholdValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::Threshold object:

  $result = $service_obj->Method(...);
  $result->Att1->Comparison

=head1 DESCRIPTION

Contains information about the threshold for service level metrics.

=head1 ATTRIBUTES


=head2 Comparison => Str

  The type of comparison. Only "less than" (LT) comparisons are
supported.


=head2 ThresholdValue => Num

  The threshold value to compare.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

