
package Paws::Route53::GetCheckerIpRanges;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCheckerIpRanges');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/checkeripranges');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::GetCheckerIpRangesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetCheckerIpRanges - Arguments for method GetCheckerIpRanges on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCheckerIpRanges on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method GetCheckerIpRanges.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCheckerIpRanges.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $GetCheckerIpRangesResponse = $route53->GetCheckerIpRanges();

    # Results:
    my $CheckerIpRanges = $GetCheckerIpRangesResponse->CheckerIpRanges;

    # Returns a L<Paws::Route53::GetCheckerIpRangesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/GetCheckerIpRanges>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCheckerIpRanges in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

