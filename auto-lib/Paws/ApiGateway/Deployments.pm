
package Paws::ApiGateway::Deployments;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::Deployment]');
  has Position => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Deployments

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::Deployment>]

  The current page of any Deployment resources in the collection of
deployment resources.

=head2 Position => Str

  


=cut

