package Paws::CloudWatch::StatisticSet;
  use Moose;
  has Maximum => (is => 'ro', isa => 'Num', required => 1);
  has Minimum => (is => 'ro', isa => 'Num', required => 1);
  has SampleCount => (is => 'ro', isa => 'Num', required => 1);
  has Sum => (is => 'ro', isa => 'Num', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::StatisticSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::StatisticSet object:

  $service_obj->Method(Att1 => { Maximum => $value, ..., Sum => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::StatisticSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Maximum

=head1 DESCRIPTION

Represents a set of statistics that describes a specific metric.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Maximum => Num

  The maximum value of the sample set.


=head2 B<REQUIRED> Minimum => Num

  The minimum value of the sample set.


=head2 B<REQUIRED> SampleCount => Num

  The number of samples used for the statistic set.


=head2 B<REQUIRED> Sum => Num

  The sum of values for the sample set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

