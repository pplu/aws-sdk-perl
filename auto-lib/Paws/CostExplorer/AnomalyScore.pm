# Generated by default/object.tt
package Paws::CostExplorer::AnomalyScore;
  use Moose;
  has CurrentScore => (is => 'ro', isa => 'Num', required => 1);
  has MaxScore => (is => 'ro', isa => 'Num', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::AnomalyScore

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::AnomalyScore object:

  $service_obj->Method(Att1 => { CurrentScore => $value, ..., MaxScore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::AnomalyScore object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentScore

=head1 DESCRIPTION

Quantifies the anomaly. The higher score means that it is more
anomalous.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentScore => Num

The last observed score.


=head2 B<REQUIRED> MaxScore => Num

The maximum score observed during the C<AnomalyDateInterval>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

