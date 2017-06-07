
package Paws::CognitoIdp::DescribeUserPoolDomainResponse;
  use Moose;
  has DomainDescription => (is => 'ro', isa => 'Paws::CognitoIdp::DomainDescriptionType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeUserPoolDomainResponse

=head1 ATTRIBUTES


=head2 DomainDescription => L<Paws::CognitoIdp::DomainDescriptionType>

A domain description object containing information about the domain.


=head2 _request_id => Str


=cut

1;