
package Paws::Inspector::ListRulesPackagesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has RulesPackageArnList => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'rulesPackageArnList' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListRulesPackagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

  When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the B<nextToken> parameter in a subsequent pagination request. If there
is no more data to be listed, this parameter is set to 'null'.

=head2 RulesPackageArnList => ArrayRef[Str]

  The list of ARNs specifying the rules packages returned by the action.


=cut

1;