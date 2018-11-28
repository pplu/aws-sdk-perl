
package Paws::SecurityHub::BatchDisableStandards;
  use Moose;
  has StandardsSubscriptionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDisableStandards');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/standards/deregister');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchDisableStandardsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchDisableStandards - Arguments for method BatchDisableStandards on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDisableStandards on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchDisableStandards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDisableStandards.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchDisableStandardsResponse = $securityhub->BatchDisableStandards(
      StandardsSubscriptionArns => [ 'MyNonEmptyString', ... ],

    );

    # Results:
    my $StandardsSubscriptions =
      $BatchDisableStandardsResponse->StandardsSubscriptions;

    # Returns a L<Paws::SecurityHub::BatchDisableStandardsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchDisableStandards>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StandardsSubscriptionArns => ArrayRef[Str|Undef]

The ARNS of the standards subscriptions that you want to disable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDisableStandards in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

