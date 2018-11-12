
package Paws::Inspector::ListExclusionsResponse;
  use Moose;
  has ExclusionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'exclusionArns' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListExclusionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExclusionArns => ArrayRef[Str|Undef]

A list of exclusions' ARNs returned by the action.


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameters is present in the response and contains the value to use for
the nextToken parameter in a subsequent pagination request. If there is
no more data to be listed, this parameter is set to null.


=head2 _request_id => Str


=cut

1;