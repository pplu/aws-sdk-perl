
package Paws::SMS::GenerateTemplateResponse;
  use Moose;
  has S3Location => (is => 'ro', isa => 'Paws::SMS::S3Location', traits => ['NameInRequest'], request_name => 's3Location' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GenerateTemplateResponse

=head1 ATTRIBUTES


=head2 S3Location => L<Paws::SMS::S3Location>

Location of the Amazon S3 object.


=head2 _request_id => Str


=cut

1;