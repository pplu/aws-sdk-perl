package Paws::CostExplorer::CostCategoryReference;
  use Moose;
  has CostCategoryArn => (is => 'ro', isa => 'Str');
  has EffectiveEnd => (is => 'ro', isa => 'Str');
  has EffectiveStart => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CostCategoryReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CostCategoryReference object:

  $service_obj->Method(Att1 => { CostCategoryArn => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CostCategoryReference object:

  $result = $service_obj->Method(...);
  $result->Att1->CostCategoryArn

=head1 DESCRIPTION

I<B<Cost Category is in public beta for AWS Billing and Cost Management
and is subject to change. Your use of Cost Categories is subject to the
Beta Service Participation terms of the AWS Service Terms
(https://aws.amazon.com/service-terms/) (Section 1.10).>>

A reference to a Cost Category containing only enough information to
identify the Cost Category.

You can use this information to retrieve the full Cost Category
information using C<DescribeCostCategory>.

=head1 ATTRIBUTES


=head2 CostCategoryArn => Str

  The unique identifier for your Cost Category Reference.


=head2 EffectiveEnd => Str

  The Cost Category's effective end date.


=head2 EffectiveStart => Str

  The Cost Category's effective start date.


=head2 Name => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

