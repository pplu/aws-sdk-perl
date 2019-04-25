
package Paws::Shield::DeleteSubscription;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::DeleteSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DeleteSubscription - Arguments for method DeleteSubscription on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSubscription on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method DeleteSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSubscription.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $DeleteSubscriptionResponse = $shield->DeleteSubscription();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/DeleteSubscription>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSubscription in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

