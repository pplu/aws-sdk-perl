package Paws::CostExplorer::SavingsPlansUtilization;
  use Moose;
  has TotalCommitment => (is => 'ro', isa => 'Str');
  has UnusedCommitment => (is => 'ro', isa => 'Str');
  has UsedCommitment => (is => 'ro', isa => 'Str');
  has UtilizationPercentage => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansUtilization

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansUtilization object:

  $service_obj->Method(Att1 => { TotalCommitment => $value, ..., UtilizationPercentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansUtilization object:

  $result = $service_obj->Method(...);
  $result->Att1->TotalCommitment

=head1 DESCRIPTION

The measurement of how well you are using your existing Savings Plans.

=head1 ATTRIBUTES


=head2 TotalCommitment => Str

  The total amount of Savings Plans commitment that's been purchased in
an account (or set of accounts).


=head2 UnusedCommitment => Str

  The amount of your Savings Plans commitment that was not consumed from
Savings Plans eligible usage in a specific period.


=head2 UsedCommitment => Str

  The amount of your Savings Plans commitment that was consumed from
Savings Plans eligible usage in a specific period.


=head2 UtilizationPercentage => Str

  The amount of C<UsedCommitment> divided by the C<TotalCommitment> for
your Savings Plans.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

