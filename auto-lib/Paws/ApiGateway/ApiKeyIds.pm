
package Paws::ApiGateway::ApiKeyIds;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str]');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ApiKeyIds

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str]

A list of all the ApiKey identifiers.



=head2 Warnings => ArrayRef[Str]

A list of warning messages.




=cut

