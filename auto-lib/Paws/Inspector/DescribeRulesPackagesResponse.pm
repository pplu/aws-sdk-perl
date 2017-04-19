
package Paws::Inspector::DescribeRulesPackagesResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'Paws::Inspector::FailedItems', traits => ['NameInRequest'], request_name => 'failedItems' , required => 1);
  has RulesPackages => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::RulesPackage]', traits => ['NameInRequest'], request_name => 'rulesPackages' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeRulesPackagesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => L<Paws::Inspector::FailedItems>

Rules package details that cannot be described. An error code is
provided for each failed item.


=head2 B<REQUIRED> RulesPackages => ArrayRef[L<Paws::Inspector::RulesPackage>]

Information about the rules package.


=head2 _request_id => Str


=cut

1;