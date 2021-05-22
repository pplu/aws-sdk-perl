
package Paws::Connect::DescribeQueue;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QueueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queues/{InstanceId}/{QueueId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::DescribeQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeQueue - Arguments for method DescribeQueue on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeQueue on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DescribeQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeQueue.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $DescribeQueueResponse = $connect->DescribeQueue(
      InstanceId => 'MyInstanceId',
      QueueId    => 'MyQueueId',

    );

    # Results:
    my $Queue = $DescribeQueueResponse->Queue;

    # Returns a L<Paws::Connect::DescribeQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DescribeQueue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> QueueId => Str

The identifier for the queue.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeQueue in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

