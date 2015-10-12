package Paws::Support::TrustedAdvisorCostOptimizingSummary;
  use Moose;
  has estimatedMonthlySavings => (is => 'ro', isa => 'Num', required => 1);
  has estimatedPercentMonthlySavings => (is => 'ro', isa => 'Num', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCostOptimizingSummary

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCostOptimizingSummary object:

  $service_obj->Method(Att1 => { estimatedMonthlySavings => $value, ..., estimatedPercentMonthlySavings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCostOptimizingSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->estimatedMonthlySavings

=head1 ATTRIBUTES

=head2 B<REQUIRED> estimatedMonthlySavings => Num

  

The estimated monthly savings that might be realized if the recommended
actions are taken.










=head2 B<REQUIRED> estimatedPercentMonthlySavings => Num

  

The estimated percentage of savings that might be realized if the
recommended actions are taken.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

