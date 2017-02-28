
package Paws::Route53::GetCheckerIpRangesResponse;
  use Moose;
  has CheckerIpRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetCheckerIpRangesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckerIpRanges => ArrayRef[Str|Undef]






=cut

