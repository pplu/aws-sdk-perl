
package Paws::WAFV2::GetSampledRequests;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has RuleMetricName => (is => 'ro', isa => 'Str', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has TimeWindow => (is => 'ro', isa => 'Paws::WAFV2::TimeWindow', required => 1);
  has WebAclArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSampledRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::GetSampledRequestsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetSampledRequests - Arguments for method GetSampledRequests on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSampledRequests on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method GetSampledRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSampledRequests.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $GetSampledRequestsResponse = $wafv2->GetSampledRequests(
      MaxItems       => 1,
      RuleMetricName => 'MyMetricName',
      Scope          => 'CLOUDFRONT',
      TimeWindow     => {
        EndTime   => '1970-01-01T01:00:00',
        StartTime => '1970-01-01T01:00:00',

      },
      WebAclArn => 'MyResourceArn',

    );

    # Results:
    my $PopulationSize  = $GetSampledRequestsResponse->PopulationSize;
    my $SampledRequests = $GetSampledRequestsResponse->SampledRequests;
    my $TimeWindow      = $GetSampledRequestsResponse->TimeWindow;

    # Returns a L<Paws::WAFV2::GetSampledRequestsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/GetSampledRequests>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxItems => Int

The number of requests that you want WAF to return from among the first
5,000 requests that your Amazon Web Services resource received during
the time range. If your resource received fewer requests than the value
of C<MaxItems>, C<GetSampledRequests> returns information about all of
them.



=head2 B<REQUIRED> RuleMetricName => Str

The metric name assigned to the C<Rule> or C<RuleGroup> for which you
want a sample of requests.



=head2 B<REQUIRED> Scope => Str

Specifies whether this is for an Amazon CloudFront distribution or for
a regional application. A regional application can be an Application
Load Balancer (ALB), an Amazon API Gateway REST API, or an AppSync
GraphQL API.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 B<REQUIRED> TimeWindow => L<Paws::WAFV2::TimeWindow>

The start date and time and the end date and time of the range for
which you want C<GetSampledRequests> to return a sample of requests.
You must specify the times in Coordinated Universal Time (UTC) format.
UTC format includes the special designator, C<Z>. For example,
C<"2016-09-27T14:50Z">. You can specify any time range in the previous
three hours. If you specify a start time that's earlier than three
hours ago, WAF sets it to three hours ago.



=head2 B<REQUIRED> WebAclArn => Str

The Amazon resource name (ARN) of the C<WebACL> for which you want a
sample of requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSampledRequests in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

