
package Paws::SSM::GetDocumentResult;
  use Moose;
  has Content => (is => 'ro', isa => 'Str');
  has DocumentFormat => (is => 'ro', isa => 'Str');
  has DocumentType => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDocumentResult

=head1 ATTRIBUTES


=head2 Content => Str

The contents of the Systems Manager document.


=head2 DocumentFormat => Str

The document format, either JSON or YAML.

Valid values are: C<"YAML">, C<"JSON">
=head2 DocumentType => Str

The document type.

Valid values are: C<"Command">, C<"Policy">, C<"Automation">
=head2 DocumentVersion => Str

The document version.


=head2 Name => Str

The name of the Systems Manager document.


=head2 _request_id => Str


=cut

1;