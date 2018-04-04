
package Paws::DeviceFarm::ListInstanceProfilesResult;
  use Moose;
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::InstanceProfile]', traits => ['NameInRequest'], request_name => 'instanceProfiles' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListInstanceProfilesResult

=head1 ATTRIBUTES


=head2 InstanceProfiles => ArrayRef[L<Paws::DeviceFarm::InstanceProfile>]

An object containing information about your instance profiles.


=head2 NextToken => Str

An identifier that can be used in the next call to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

1;