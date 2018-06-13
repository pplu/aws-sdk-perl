
package Paws::CloudWatchEvents::RemovePermission;
  use Moose;
  has StatementId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::RemovePermission - Arguments for method RemovePermission on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemovePermission on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method RemovePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemovePermission.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    $events->RemovePermission(
      StatementId => 'MyStatementId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/RemovePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StatementId => Str

The statement ID corresponding to the account that is no longer allowed
to put events to the default event bus.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemovePermission in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

