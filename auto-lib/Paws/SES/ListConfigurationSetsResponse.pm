
package Paws::SES::ListConfigurationSetsResponse;
  use Moose;
  has ConfigurationSets => (is => 'ro', isa => 'ArrayRef[Paws::SES::ConfigurationSet]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::ListConfigurationSetsResponse

=head1 ATTRIBUTES


=head2 ConfigurationSets => ArrayRef[L<Paws::SES::ConfigurationSet>]

A list of configuration sets.


=head2 NextToken => Str

A token indicating that there are additional configuration sets
available to be listed. Pass this token to successive calls of
C<ListConfigurationSets>.


=head2 _request_id => Str


=cut

