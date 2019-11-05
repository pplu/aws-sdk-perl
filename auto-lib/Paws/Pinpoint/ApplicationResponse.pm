
package Paws::Pinpoint::ApplicationResponse;
  use Moose;
<<<<<<< HEAD
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
=======
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the application.


=head2 B<REQUIRED> Id => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.


=head2 B<REQUIRED> Name => Str

The display name of the application. This name is displayed as the
B<Project name> on the Amazon Pinpoint console.


=head2 Tags => L<Paws::Pinpoint::MapOf__string>

A string-to-string map of key-value pairs that identifies the tags that
are associated with the application. Each tag consists of a required
tag key and an associated tag value.


=head2 _request_id => Str


=cut

