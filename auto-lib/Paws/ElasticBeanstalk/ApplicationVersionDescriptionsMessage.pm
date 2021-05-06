
package Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage;
  use Moose;
  has ApplicationVersions => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ApplicationVersionDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage

=head1 ATTRIBUTES


=head2 ApplicationVersions => ArrayRef[L<Paws::ElasticBeanstalk::ApplicationVersionDescription>]

List of C<ApplicationVersionDescription> objects sorted in order of
creation.


=head2 NextToken => Str

In a paginated request, the token that you can pass in a subsequent
request to get the next response page.


=head2 _request_id => Str


=cut

