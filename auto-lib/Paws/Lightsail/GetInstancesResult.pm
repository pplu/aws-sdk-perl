
package Paws::Lightsail::GetInstancesResult;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Instance]', traits => ['NameInRequest'], request_name => 'instances' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstancesResult

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::Lightsail::Instance>]

An array of key-value pairs containing information about your
instances.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
instances request.


=head2 _request_id => Str


=cut

1;