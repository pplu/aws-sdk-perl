
package Paws::Glue::GetSecurityConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SecurityConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Glue::SecurityConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSecurityConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if there are more security configurations to
return.


=head2 SecurityConfigurations => ArrayRef[L<Paws::Glue::SecurityConfiguration>]

A list of security configurations.


=head2 _request_id => Str


=cut

1;