
package Paws::ApiGateway::ApiKeys;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::ApiKey]', traits => ['NameInRequest'], request_name => 'item');
  has Position => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'position');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'warnings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ApiKeys

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::ApiKey>]

The current page of elements from this collection.


=head2 Position => Str




=head2 Warnings => ArrayRef[Str|Undef]

A list of warning messages logged during the import of API keys when
the C<failOnWarnings> option is set to true.


=head2 _request_id => Str


=cut

