
package Paws::WAF::CreateWebACLMigrationStackResponse;
  use Moose;
  has S3ObjectUrl => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateWebACLMigrationStackResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3ObjectUrl => Str

The URL of the template created in Amazon S3.


=head2 _request_id => Str


=cut

1;