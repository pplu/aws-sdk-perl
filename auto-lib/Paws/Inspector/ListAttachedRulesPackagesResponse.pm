
package Paws::Inspector::ListAttachedRulesPackagesResponse;
  use Moose;
  has nextToken => (is => 'ro', isa => 'Str');
  has rulesPackageArnList => (is => 'ro', isa => 'ArrayRef[Str]');


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListAttachedRulesPackagesResponse

=head1 ATTRIBUTES

=head2 nextToken => Str

  When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.
=head2 rulesPackageArnList => ArrayRef[Str]

  A list of ARNs specifying the rules packages returned by the action.


=cut

1;