
package Paws::ApiGateway::ApiKeyIds;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'warnings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ApiKeyIds

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

A list of all the ApiKey identifiers.


=head2 Warnings => ArrayRef[Str|Undef]

A list of warning messages.


=head2 _request_id => Str


=cut

