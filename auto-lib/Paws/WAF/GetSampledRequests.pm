
package Paws::WAF::GetSampledRequests;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
  has TimeWindow => (is => 'ro', isa => 'Paws::WAF::TimeWindow', required => 1);
  has WebAclId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSampledRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::GetSampledRequestsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetSampledRequests - Arguments for method GetSampledRequests on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSampledRequests on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method GetSampledRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSampledRequests.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To get a sampled requests
    # The following example returns detailed information about 100 requests --a
    # sample-- that AWS WAF randomly selects from among the first 5,000 requests
    # that your AWS resource received between the time period 2016-09-27T15:50Z
    # to 2016-09-27T15:50Z.
    my $GetSampledRequestsResponse = $waf->GetSampledRequests(
      {
        'MaxItems'   => 100,
        'RuleId'     => 'WAFRule-1-Example',
        'TimeWindow' => {
          'EndTime'   => '2016-09-27T15:50Z',
          'StartTime' => '2016-09-27T15:50Z'
        },
        'WebAclId' => 'createwebacl-1472061481310'
      }
    );

    # Results:
    my $PopulationSize  = $GetSampledRequestsResponse->PopulationSize;
    my $SampledRequests = $GetSampledRequestsResponse->SampledRequests;
    my $TimeWindow      = $GetSampledRequestsResponse->TimeWindow;

    # Returns a L<Paws::WAF::GetSampledRequestsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/GetSampledRequests>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxItems => Int

The number of requests that you want AWS WAF to return from among the
first 5,000 requests that your AWS resource received during the time
range. If your resource received fewer requests than the value of
C<MaxItems>, C<GetSampledRequests> returns information about all of
them.



=head2 B<REQUIRED> RuleId => Str

C<RuleId> is one of three values:

=over

=item *

The C<RuleId> of the C<Rule> or the C<RuleGroupId> of the C<RuleGroup>
for which you want C<GetSampledRequests> to return a sample of
requests.

=item *

C<Default_Action>, which causes C<GetSampledRequests> to return a
sample of the requests that didn't match any of the rules in the
specified C<WebACL>.

=back




=head2 B<REQUIRED> TimeWindow => L<Paws::WAF::TimeWindow>

The start date and time and the end date and time of the range for
which you want C<GetSampledRequests> to return a sample of requests.
Specify the date and time in the following format:
C<"2016-09-27T14:50Z">. You can specify any time range in the previous
three hours.



=head2 B<REQUIRED> WebAclId => Str

The C<WebACLId> of the C<WebACL> for which you want
C<GetSampledRequests> to return a sample of requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSampledRequests in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

