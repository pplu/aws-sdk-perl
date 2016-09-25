
package Paws::ApiGateway::ApiKeys;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::ApiKey]');
  has Position => (is => 'ro', isa => 'Str');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ApiKeys

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::ApiKey>]

The current page of any ApiKey resources in the collection of ApiKey
resources.



=head2 Position => Str





=head2 Warnings => ArrayRef[Str|Undef]

A list of warning messages logged during the import of API keys when
the C<failOnWarnings> option is set to true.




=cut

