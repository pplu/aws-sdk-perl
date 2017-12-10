package Paws::MarketplaceMetering;
  use Moose;
  sub service { 'metering.marketplace' }
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
  sub ResolveCustomer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::ResolveCustomer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchMeterUsage MeterUsage ResolveCustomer / }

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


=head1 METHODS

=head2 BatchMeterUsage(ProductCode => Str, UsageRecords => ArrayRef[L<Paws::MarketplaceMetering::UsageRecord>])

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


=head2 MeterUsage(DryRun => Bool, ProductCode => Str, Timestamp => Str, UsageDimension => Str, UsageQuantity => Int)

Each argument is described in detail in: L<Paws::MarketplaceMetering::MeterUsage>

Returns: a L<Paws::MarketplaceMetering::MeterUsageResult> instance

API to emit metering records. For identical requests, the API is
idempotent. It simply returns the metering record ID.

MeterUsage is authenticated on the buyer's AWS account, generally when
running from an EC2 instance on the AWS Marketplace.


=head2 ResolveCustomer(RegistrationToken => Str)

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

