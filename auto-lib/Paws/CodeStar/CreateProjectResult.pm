
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

Reserved for future use.


=head2 ClientRequestToken => Str

Reserved for future use.


=head2 B<REQUIRED> Id => Str

Reserved for future use.


=head2 ProjectTemplateId => Str

Reserved for future use.


=head2 _request_id => Str


=cut

1;