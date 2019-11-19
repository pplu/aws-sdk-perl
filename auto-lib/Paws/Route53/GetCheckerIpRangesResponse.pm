
package Paws::Route53::GetCheckerIpRangesResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Route53::Types qw//;
  has CheckerIpRanges => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CheckerIpRanges' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'CheckerIpRanges' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetCheckerIpRangesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CheckerIpRanges => ArrayRef[Str|Undef]

A complex type that contains sorted list of IP ranges in CIDR format
for Amazon Route 53 health checkers.




=cut

