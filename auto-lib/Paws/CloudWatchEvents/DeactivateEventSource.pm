
package Paws::CloudWatchEvents::DeactivateEventSource;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeactivateEventSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DeactivateEventSource - Arguments for method DeactivateEventSource on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeactivateEventSource on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method DeactivateEventSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeactivateEventSource.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    $events->DeactivateEventSource(
      Name => 'MyEventSourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/cloudwatch/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the partner event source to deactivate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeactivateEventSource in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

