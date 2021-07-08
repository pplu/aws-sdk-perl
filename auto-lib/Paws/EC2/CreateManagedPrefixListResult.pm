
package Paws::EC2::CreateManagedPrefixListResult;
  use Moose;
  has PrefixList => (is => 'ro', isa => 'Paws::EC2::ManagedPrefixList', request_name => 'prefixList', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateManagedPrefixListResult

=head1 ATTRIBUTES


=head2 PrefixList => L<Paws::EC2::ManagedPrefixList>

Information about the prefix list.


=head2 _request_id => Str


=cut

