
package Paws::MobileHub::DescribeBundleResult;
  use Moose;
  has Details => (is => 'ro', isa => 'Paws::MobileHub::BundleDetails', traits => ['NameInRequest'], request_name => 'details');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::DescribeBundleResult

=head1 ATTRIBUTES


=head2 Details => L<Paws::MobileHub::BundleDetails>

The details of the bundle.


=head2 _request_id => Str


=cut

