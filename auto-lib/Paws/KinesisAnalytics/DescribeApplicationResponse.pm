
package Paws::KinesisAnalytics::DescribeApplicationResponse;
  use Moose;
  has ApplicationDetail => (is => 'ro', isa => 'Paws::KinesisAnalytics::ApplicationDetail', required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::DescribeApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDetail => L<Paws::KinesisAnalytics::ApplicationDetail>

Provides a description of the application, such as the application
Amazon Resource Name (ARN), status, latest version, and input and
output configuration details.




=cut

1;