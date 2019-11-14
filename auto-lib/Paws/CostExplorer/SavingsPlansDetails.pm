package Paws::CostExplorer::SavingsPlansDetails;
  use Moose;
  has InstanceFamily => (is => 'ro', isa => 'Str');
  has OfferingId => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansDetails object:

  $service_obj->Method(Att1 => { InstanceFamily => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceFamily

=head1 DESCRIPTION

Attribute details on a specific Savings Plan.

=head1 ATTRIBUTES


=head2 InstanceFamily => Str

  A group of instance types that Savings Plans applies to.


=head2 OfferingId => Str

  The unique ID used to distinguish Savings Plans from one another.


=head2 Region => Str

  A collection of AWS resources in a geographic area. Each AWS Region is
isolated and independent of the other Regions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

