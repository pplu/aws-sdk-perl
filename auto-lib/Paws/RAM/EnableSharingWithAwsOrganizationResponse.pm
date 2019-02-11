
package Paws::RAM::EnableSharingWithAwsOrganizationResponse;
  use Moose;
  has ReturnValue => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'returnValue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::EnableSharingWithAwsOrganizationResponse

=head1 ATTRIBUTES


=head2 ReturnValue => Bool

Indicates whether the request succeeded.


=head2 _request_id => Str


=cut

