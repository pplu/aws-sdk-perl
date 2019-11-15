
package Paws::SSM::PutParameterResult;
  use Moose;
  has Tier => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutParameterResult

=head1 ATTRIBUTES


=head2 Tier => Str

The tier assigned to the parameter.

Valid values are: C<"Standard">, C<"Advanced">, C<"Intelligent-Tiering">
=head2 Version => Int

The new version number of a parameter. If you edit a parameter value,
Parameter Store automatically creates a new version and assigns this
new version a unique ID. You can reference a parameter version ID in
API actions or in Systems Manager documents (SSM documents). By
default, if you don't specify a specific version, the system returns
the latest parameter value when a parameter is called.


=head2 _request_id => Str


=cut

1;