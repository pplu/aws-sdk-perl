
package Paws::Quicksight::DeleteTemplateAliasResponse;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has TemplateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DeleteTemplateAliasResponse

=head1 ATTRIBUTES


=head2 AliasName => Str

The name of the alias.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the resource.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 TemplateId => Str

An ID for the template.


=head2 _request_id => Str


=cut

