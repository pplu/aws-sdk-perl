package Paws::MarketplaceMetering;
  use Moose;
  sub service { 'metering.marketplace' }
  sub signing_name { 'aws-marketplace' }
  sub version { '2016-01-14' }
  sub target_prefix { 'AWSMPMeteringService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchMeterUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::BatchMeterUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MeterUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::MeterUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::RegisterUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResolveCustomer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::ResolveCustomer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchMeterUsage MeterUsage RegisterUsage ResolveCustomer / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering - Perl Interface to AWS AWSMarketplace Metering

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceMetering');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Marketplace Metering Service

This reference provides descriptions of the low-level AWS Marketplace
Metering Service API.

AWS Marketplace sellers can use this API to submit usage data for
custom usage dimensions.

B<Submitting Metering Records>

=over

=item *

I<MeterUsage>- Submits the metering record for a Marketplace product.
MeterUsage is called from an EC2 instance.

=item *

I<BatchMeterUsage>- Submits the metering record for a set of customers.
BatchMeterUsage is called from a software-as-a-service (SaaS)
application.

=back

B<Accepting New Customers>

=over

=item *

I<ResolveCustomer>- Called by a SaaS application during the
registration process. When a buyer visits your website during the
registration process, the buyer submits a Registration Token through
the browser. The Registration Token is resolved through this API to
obtain a CustomerIdentifier and Product Code.

=back

B<Entitlement and Metering for Paid Container Products>

=over

=item *

Paid container software products sold through AWS Marketplace must
integrate with the AWS Marketplace Metering Service and call the
RegisterUsage operation for software entitlement and metering. Calling
RegisterUsage from containers running outside of Amazon Elastic
Container Service (Amazon ECR) isn't supported. Free and BYOL products
for ECS aren't required to call RegisterUsage, but you can do so if you
want to receive usage data in your seller reports. For more information
on using the RegisterUsage operation, see Container-Based Products
(https://docs.aws.amazon.com/latest/userguide/entitlement-and-metering-for-paid-products.html).

=back

BatchMeterUsage API calls are captured by AWS CloudTrail. You can use
Cloudtrail to verify that the SaaS metering records that you sent are
accurate by searching for records with the eventName of
BatchMeterUsage. You can also use CloudTrail to audit records over
time. For more information, see the I< AWS CloudTrail User Guide
(http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html)
>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/marketplacemetering/latest/APIReference/Welcome.html>


=head1 METHODS

=head2 BatchMeterUsage

=over

=item ProductCode => Str

=item UsageRecords => ArrayRef[L<Paws::MarketplaceMetering::UsageRecord>]


=back

Each argument is described in detail in: L<Paws::MarketplaceMetering::BatchMeterUsage>

Returns: a L<Paws::MarketplaceMetering::BatchMeterUsageResult> instance

BatchMeterUsage is called from a SaaS application listed on the AWS
Marketplace to post metering records for a set of customers.

For identical requests, the API is idempotent; requests can be retried
with the same records or a subset of the input records.

Every request to BatchMeterUsage is for one product. If you need to
meter usage for multiple products, you must make multiple calls to
BatchMeterUsage.

BatchMeterUsage can process up to 25 UsageRecords at a time.


=head2 MeterUsage

=over

=item DryRun => Bool

=item ProductCode => Str

=item Timestamp => Str

=item UsageDimension => Str

=item UsageQuantity => Int


=back

Each argument is described in detail in: L<Paws::MarketplaceMetering::MeterUsage>

Returns: a L<Paws::MarketplaceMetering::MeterUsageResult> instance

API to emit metering records. For identical requests, the API is
idempotent. It simply returns the metering record ID.

MeterUsage is authenticated on the buyer's AWS account, generally when
running from an EC2 instance on the AWS Marketplace.


=head2 RegisterUsage

=over

=item ProductCode => Str

=item PublicKeyVersion => Int

=item [Nonce => Str]


=back

Each argument is described in detail in: L<Paws::MarketplaceMetering::RegisterUsage>

Returns: a L<Paws::MarketplaceMetering::RegisterUsageResult> instance

Paid container software products sold through AWS Marketplace must
integrate with the AWS Marketplace Metering Service and call the
RegisterUsage operation for software entitlement and metering. Calling
RegisterUsage from containers running outside of ECS is not currently
supported. Free and BYOL products for ECS aren't required to call
RegisterUsage, but you may choose to do so if you would like to receive
usage data in your seller reports. The sections below explain the
behavior of RegisterUsage. RegisterUsage performs two primary
functions: metering and entitlement.

=over

=item *

I<Entitlement>: RegisterUsage allows you to verify that the customer
running your paid software is subscribed to your product on AWS
Marketplace, enabling you to guard against unauthorized use. Your
container image that integrates with RegisterUsage is only required to
guard against unauthorized use at container startup, as such a
CustomerNotSubscribedException/PlatformNotSupportedException will only
be thrown on the initial call to RegisterUsage. Subsequent calls from
the same Amazon ECS task instance (e.g. task-id) will not throw a
CustomerNotSubscribedException, even if the customer unsubscribes while
the Amazon ECS task is still running.

=item *

I<Metering>: RegisterUsage meters software use per ECS task, per hour,
with usage prorated to the second. A minimum of 1 minute of usage
applies to tasks that are short lived. For example, if a customer has a
10 node ECS cluster and creates an ECS service configured as a Daemon
Set, then ECS will launch a task on all 10 cluster nodes and the
customer will be charged: (10 * hourly_rate). Metering for software use
is automatically handled by the AWS Marketplace Metering Control Plane
-- your software is not required to perform any metering specific
actions, other than call RegisterUsage once for metering of software
use to commence. The AWS Marketplace Metering Control Plane will also
continue to bill customers for running ECS tasks, regardless of the
customers subscription state, removing the need for your software to
perform entitlement checks at runtime.

=back



=head2 ResolveCustomer

=over

=item RegistrationToken => Str


=back

Each argument is described in detail in: L<Paws::MarketplaceMetering::ResolveCustomer>

Returns: a L<Paws::MarketplaceMetering::ResolveCustomerResult> instance

ResolveCustomer is called by a SaaS application during the registration
process. When a buyer visits your website during the registration
process, the buyer submits a registration token through their browser.
The registration token is resolved through this API to obtain a
CustomerIdentifier and product code.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

