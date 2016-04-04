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

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub MeterUsage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceMetering::MeterUsage', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { qw/MeterUsage / }

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

=back


=head1 METHODS

=head2 MeterUsage(DryRun => Bool, ProductCode => Str, Timestamp => L<Paws::API::TimeStamp>, UsageDimension => Str, UsageQuantity => Int)

Each argument is described in detail in: L<Paws::MarketplaceMetering::MeterUsage>

Returns: a L<Paws::MarketplaceMetering::MeterUsageResult> instance

  API to emit metering records. For identical requests, the API is
idempotent. It simply returns the metering record ID.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

