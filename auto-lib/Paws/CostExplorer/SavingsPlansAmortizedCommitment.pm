package Paws::CostExplorer::SavingsPlansAmortizedCommitment;
  use Moose;
  has AmortizedRecurringCommitment => (is => 'ro', isa => 'Str');
  has AmortizedUpfrontCommitment => (is => 'ro', isa => 'Str');
  has TotalAmortizedCommitment => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansAmortizedCommitment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansAmortizedCommitment object:

  $service_obj->Method(Att1 => { AmortizedRecurringCommitment => $value, ..., TotalAmortizedCommitment => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansAmortizedCommitment object:

  $result = $service_obj->Method(...);
  $result->Att1->AmortizedRecurringCommitment

=head1 DESCRIPTION

The amortized amount of Savings Plans purchased in a specific account
during a specific time interval.

=head1 ATTRIBUTES


=head2 AmortizedRecurringCommitment => Str

  The amortized amount of your Savings Plans commitment that was
purchased with either a C<Partial> or a C<NoUpfront>.


=head2 AmortizedUpfrontCommitment => Str

  The amortized amount of your Savings Plans commitment that was
purchased with an C<Upfront> or C<PartialUpfront> Savings Plans.


=head2 TotalAmortizedCommitment => Str

  The total amortized amount of your Savings Plans commitment, regardless
of your Savings Plans purchase method.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

