
package Paws::Config::GetResourceConfigHistoryResponse;
  use Moose;
  has configurationItems => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationItem]');
  has nextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Config::GetResourceConfigHistoryResponse

=head1 ATTRIBUTES

=head2 configurationItems => ArrayRef[Paws::Config::ConfigurationItem]

  A list that contains the configuration history of one or more
resources.
=head2 nextToken => Str

  The string that you use in a subsequent request to get the next page of
results in a paginated response.


=cut

1;