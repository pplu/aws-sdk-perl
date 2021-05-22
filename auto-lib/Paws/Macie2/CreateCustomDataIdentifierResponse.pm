
package Paws::Macie2::CreateCustomDataIdentifierResponse;
  use Moose;
  has CustomDataIdentifierId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDataIdentifierId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateCustomDataIdentifierResponse

=head1 ATTRIBUTES


=head2 CustomDataIdentifierId => Str

The unique identifier for the custom data identifier that was created.


=head2 _request_id => Str


=cut

