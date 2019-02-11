package Paws::AutoScalingPlans::Datapoint;
  use Moose;
  has Timestamp => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScalingPlans::Datapoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScalingPlans::Datapoint object:

  $service_obj->Method(Att1 => { Timestamp => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScalingPlans::Datapoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Timestamp

=head1 DESCRIPTION

Represents a single value in the forecast data used for predictive
scaling.

=head1 ATTRIBUTES


=head2 Timestamp => Str

  The time stamp for the data point in UTC format.


=head2 Value => Num

  The value of the data point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScalingPlans>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

