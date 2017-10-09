
package Paws::ElasticBeanstalk::ConfigurationOptionsDescription;
  use Moose;
  has Options => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationOptionDescription]');
  has PlatformArn => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ConfigurationOptionsDescription

=head1 ATTRIBUTES


=head2 Options => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionDescription>]

A list of ConfigurationOptionDescription.


=head2 PlatformArn => Str

The ARN of the platform.


=head2 SolutionStackName => Str

The name of the solution stack these configuration options belong to.


=head2 _request_id => Str


=cut

