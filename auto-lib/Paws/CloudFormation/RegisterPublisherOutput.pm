
package Paws::CloudFormation::RegisterPublisherOutput;
  use Moose;
  has PublisherId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::RegisterPublisherOutput

=head1 ATTRIBUTES


=head2 PublisherId => Str

The ID assigned this account by CloudFormation for publishing
extensions.


=head2 _request_id => Str


=cut

