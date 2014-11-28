
package Paws::Route53::GetCheckerIpRanges {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCheckerIpRanges');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetCheckerIpRangesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetCheckerIpRangesResult');
}
1;