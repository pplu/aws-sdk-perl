
package Paws::KinesisAnalytics::CreateApplicationResponse;
  use Moose;
  has ApplicationSummary => (is => 'ro', isa => 'Paws::KinesisAnalytics::ApplicationSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSummary => L<Paws::KinesisAnalytics::ApplicationSummary>

In response to your C<CreateApplication> request, Amazon Kinesis
Analytics returns a response with a summary of the application it
created, including the application Amazon Resource Name (ARN), name,
and status.


=head2 _request_id => Str


=cut

1;