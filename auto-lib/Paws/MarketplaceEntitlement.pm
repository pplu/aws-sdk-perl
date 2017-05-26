package Paws::MarketplaceEntitlement;
  use Moose;
  sub service { 'entitlement.marketplace' }
  sub version { '2017-01-11' }
  sub target_prefix { 'AWSMPEntitlementService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub GetEntitlements {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MarketplaceEntitlement::GetEntitlements', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetEntitlements / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceEntitlement - Perl Interface to AWS AWS Marketplace Entitlement Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MarketplaceEntitlement');
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

AWS Marketplace Entitlement Service

This reference provides descriptions of the AWS Marketplace Entitlement
Service API.

AWS Marketplace Entitlement Service is used to determine the
entitlement of a customer to a given product. An entitlement represents
capacity in a product owned by the customer. For example, a customer
might own some number of users or seats in an SaaS application or some
amount of data capacity in a multi-tenant database.

B<Getting Entitlement Records>

=over

=item *

I<GetEntitlements>- Gets the entitlements for a Marketplace product.

=back


=head1 METHODS

=head2 GetEntitlements(ProductCode => Str, [Filter => L<Paws::MarketplaceEntitlement::GetEntitlementFilters>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MarketplaceEntitlement::GetEntitlements>

Returns: a L<Paws::MarketplaceEntitlement::GetEntitlementsResult> instance

  GetEntitlements retrieves entitlement values for a given product. The
results can be filtered based on customer identifier or product
dimensions.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

