
package Paws::Inspector::ListApplicationsResponse;
  use Moose;
  has applicationArnList => (is => 'ro', isa => 'ArrayRef[Str]');
  has nextToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListApplicationsResponse

=head1 ATTRIBUTES

=head2 applicationArnList => ArrayRef[Str]

  A list of ARNs specifying the applications returned by the action.
=head2 nextToken => Str

  When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.


=cut

1;