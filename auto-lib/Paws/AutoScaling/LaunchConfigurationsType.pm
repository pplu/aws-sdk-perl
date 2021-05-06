
package Paws::AutoScaling::LaunchConfigurationsType;
  use Moose;
  has LaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LaunchConfiguration]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LaunchConfigurationsType

=head1 ATTRIBUTES


=head2 B<REQUIRED> LaunchConfigurations => ArrayRef[L<Paws::AutoScaling::LaunchConfiguration>]

The launch configurations.


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 _request_id => Str


=cut

