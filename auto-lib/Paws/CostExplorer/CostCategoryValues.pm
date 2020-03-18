package Paws::CostExplorer::CostCategoryValues;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CostCategoryValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::CostCategoryValues object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::CostCategoryValues object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

I<B<Cost Category is in public beta for AWS Billing and Cost Management
and is subject to change. Your use of Cost Categories is subject to the
Beta Service Participation terms of the AWS Service Terms
(https://aws.amazon.com/service-terms/) (Section 1.10).>>

The values that are available for Cost Categories.

=head1 ATTRIBUTES


=head2 Key => Str

  


=head2 Values => ArrayRef[Str|Undef]

  The specific value of the Cost Category.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

