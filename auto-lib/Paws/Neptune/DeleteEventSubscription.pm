
package Paws::Neptune::DeleteEventSubscription;
  use Moose;
  has SubscriptionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::DeleteEventSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteEventSubscriptionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::DeleteEventSubscription - Arguments for method DeleteEventSubscription on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEventSubscription on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method DeleteEventSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEventSubscription.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $DeleteEventSubscriptionResult = $rds->DeleteEventSubscription(
      SubscriptionName => 'MyString',

    );

    # Results:
    my $EventSubscription = $DeleteEventSubscriptionResult->EventSubscription;

    # Returns a L<Paws::Neptune::DeleteEventSubscriptionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteEventSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionName => Str

The name of the event notification subscription you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEventSubscription in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

