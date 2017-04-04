
package Paws::DeviceFarm::ListNetworkProfilesResult;
  use Moose;
  has NetworkProfiles => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::NetworkProfile]', traits => ['NameInRequest'], request_name => 'networkProfiles' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListNetworkProfilesResult

=head1 ATTRIBUTES


=head2 NetworkProfiles => ArrayRef[L<Paws::DeviceFarm::NetworkProfile>]

A list of the available network profiles.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.


=head2 _request_id => Str


=cut

1;