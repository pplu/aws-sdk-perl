
package Paws::Quicksight::UpdateTemplateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationStatus => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');
  has TemplateId => (is => 'ro', isa => 'Str');
  has VersionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateTemplateResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) for the template.


=head2 CreationStatus => Str

The creation status of the template.

Valid values are: C<"CREATION_IN_PROGRESS">, C<"CREATION_SUCCESSFUL">, C<"CREATION_FAILED">, C<"UPDATE_IN_PROGRESS">, C<"UPDATE_SUCCESSFUL">, C<"UPDATE_FAILED">
=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 TemplateId => Str

The ID for the template.


=head2 VersionArn => Str

The ARN for the template, including the version information of the
first version.


=head2 _request_id => Str


=cut

