
package Paws::Schemas::DescribeRegistryResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has RegistryArn => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::DescribeRegistryResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the registry.


=head2 RegistryArn => Str

The ARN of the registry.


=head2 RegistryName => Str

The name of the registry.


=head2 Tags => L<Paws::Schemas::Tags>

Tags associated with the registry.


=head2 _request_id => Str


=cut

