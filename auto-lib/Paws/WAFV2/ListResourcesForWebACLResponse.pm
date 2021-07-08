
package Paws::WAFV2::ListResourcesForWebACLResponse;
  use Moose;
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::ListResourcesForWebACLResponse

=head1 ATTRIBUTES


=head2 ResourceArns => ArrayRef[Str|Undef]

The array of Amazon Resource Names (ARNs) of the associated resources.


=head2 _request_id => Str


=cut

1;