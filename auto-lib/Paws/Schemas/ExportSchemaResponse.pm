
package Paws::Schemas::ExportSchemaResponse;
  use Moose;
  has Content => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str');
  has SchemaVersion => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::ExportSchemaResponse

=head1 ATTRIBUTES


=head2 Content => Str




=head2 SchemaArn => Str




=head2 SchemaName => Str




=head2 SchemaVersion => Str




=head2 Type => Str




=head2 _request_id => Str


=cut

