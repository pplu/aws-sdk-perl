
package Paws::Connect::UpdateQueueMaxContacts;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxContacts => (is => 'ro', isa => 'Int');
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QueueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQueueMaxContacts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queues/{InstanceId}/{QueueId}/max-contacts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateQueueMaxContacts - Arguments for method UpdateQueueMaxContacts on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQueueMaxContacts on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateQueueMaxContacts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQueueMaxContacts.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateQueueMaxContacts(
      InstanceId  => 'MyInstanceId',
      QueueId     => 'MyQueueId',
      MaxContacts => 1,                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateQueueMaxContacts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxContacts => Int

The maximum number of contacts that can be in the queue before it is
considered full.



=head2 B<REQUIRED> QueueId => Str

The identifier for the queue.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQueueMaxContacts in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

