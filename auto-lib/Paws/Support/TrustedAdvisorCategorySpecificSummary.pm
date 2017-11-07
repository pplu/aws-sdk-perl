package Paws::Support::TrustedAdvisorCategorySpecificSummary;
  use Moose;
  has CostOptimizing => (is => 'ro', isa => 'Paws::Support::TrustedAdvisorCostOptimizingSummary', request_name => 'costOptimizing', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorCategorySpecificSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorCategorySpecificSummary object:

  $service_obj->Method(Att1 => { CostOptimizing => $value, ..., CostOptimizing => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorCategorySpecificSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CostOptimizing

=head1 DESCRIPTION

The container for summary information that relates to the category of
the Trusted Advisor check.

=head1 ATTRIBUTES


=head2 CostOptimizing => L<Paws::Support::TrustedAdvisorCostOptimizingSummary>

  The summary information about cost savings for a Trusted Advisor check
that is in the Cost Optimizing category.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

