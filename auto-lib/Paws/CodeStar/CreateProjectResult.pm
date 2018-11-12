
package Paws::CodeStar::CreateProjectResult;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);
  has ProjectTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectTemplateId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CreateProjectResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the created project.


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested project creation.


=head2 B<REQUIRED> Id => Str

The ID of the project.


=head2 ProjectTemplateId => Str

Reserved for future use.


=head2 _request_id => Str


=cut

1;