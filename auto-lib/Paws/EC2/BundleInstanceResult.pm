
package Paws::EC2::BundleInstanceResult;
  use Moose;
  has BundleTask => (is => 'ro', isa => 'Paws::EC2::BundleTask', request_name => 'bundleInstanceTask', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::BundleInstanceResult

=head1 ATTRIBUTES


=head2 BundleTask => L<Paws::EC2::BundleTask>

Information about the bundle task.


=head2 _request_id => Str


=cut

