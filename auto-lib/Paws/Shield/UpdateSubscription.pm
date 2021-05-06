
package Paws::Shield::UpdateSubscription;
  use Moose;
  has AutoRenew => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::UpdateSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::UpdateSubscription - Arguments for method UpdateSubscription on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubscription on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method UpdateSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubscription.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $UpdateSubscriptionResponse = $shield->UpdateSubscription(
      AutoRenew => 'ENABLED',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/UpdateSubscription>

=head1 ATTRIBUTES


=head2 AutoRenew => Str

When you initally create a subscription, C<AutoRenew> is set to
C<ENABLED>. If C<ENABLED>, the subscription will be automatically
renewed at the end of the existing subscription period. You can change
this by submitting an C<UpdateSubscription> request. If the
C<UpdateSubscription> request does not included a value for
C<AutoRenew>, the existing value for C<AutoRenew> remains unchanged.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubscription in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

