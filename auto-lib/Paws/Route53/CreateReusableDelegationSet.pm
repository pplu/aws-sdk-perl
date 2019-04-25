
package Paws::Route53::CreateReusableDelegationSet;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReusableDelegationSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/delegationset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateReusableDelegationSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateReusableDelegationSet - Arguments for method CreateReusableDelegationSet on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReusableDelegationSet on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method CreateReusableDelegationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReusableDelegationSet.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $CreateReusableDelegationSetResponse =
      $route53->CreateReusableDelegationSet(
      CallerReference => 'MyNonce',
      HostedZoneId    => 'MyResourceId',    # OPTIONAL
      );

    # Results:
    my $DelegationSet = $CreateReusableDelegationSetResponse->DelegationSet;
    my $Location      = $CreateReusableDelegationSetResponse->Location;

    # Returns a L<Paws::Route53::CreateReusableDelegationSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/CreateReusableDelegationSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A unique string that identifies the request, and that allows you to
retry failed C<CreateReusableDelegationSet> requests without the risk
of executing the operation twice. You must use a unique
C<CallerReference> string every time you submit a
C<CreateReusableDelegationSet> request. C<CallerReference> can be any
unique string, for example a date/time stamp.



=head2 HostedZoneId => Str

If you want to mark the delegation set for an existing hosted zone as
reusable, the ID for that hosted zone.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReusableDelegationSet in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

