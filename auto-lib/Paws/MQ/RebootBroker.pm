
package Paws::MQ::RebootBroker;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'broker-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootBroker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers/{broker-id}/reboot');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::RebootBrokerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::RebootBroker - Arguments for method RebootBroker on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RebootBroker on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method RebootBroker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RebootBroker.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $RebootBrokerResponse = $mq->RebootBroker(
      BrokerId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/RebootBroker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerId => Str

The unique ID that Amazon MQ generates for the broker.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RebootBroker in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

