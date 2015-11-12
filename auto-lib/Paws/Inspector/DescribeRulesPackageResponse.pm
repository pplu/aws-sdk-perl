
package Paws::Inspector::DescribeRulesPackageResponse;
  use Moose;
  has RulesPackage => (is => 'ro', isa => 'Paws::Inspector::RulesPackage', traits => ['Unwrapped'], xmlname => 'rulesPackage' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DescribeRulesPackageResponse

=head1 ATTRIBUTES


=head2 RulesPackage => L<Paws::Inspector::RulesPackage>

  Information about the rules package.


=cut

1;