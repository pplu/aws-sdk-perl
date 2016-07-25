
package Paws::Inspector::DescribeRulesPackagesResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'HashRef[Paws::Inspector::FailedItemDetails]', traits => ['Unwrapped'], xmlname => 'failedItems' , required => 1);
  has RulesPackages => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::RulesPackage]', traits => ['Unwrapped'], xmlname => 'rulesPackages' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeRulesPackagesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => HashRef[L<Paws::Inspector::FailedItemDetails>]

Rules package details that cannot be described. An error code is
provided for each failed item.



=head2 B<REQUIRED> RulesPackages => ArrayRef[L<Paws::Inspector::RulesPackage>]

Information about the rules package.




=cut

1;