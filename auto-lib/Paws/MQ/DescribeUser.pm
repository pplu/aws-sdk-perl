
package Paws::MQ::DescribeUser;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'broker-id', required => 1);
  has Username => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'username', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/brokers/{broker-id}/users/{username}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::DescribeUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeUser - Arguments for method DescribeUser on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUser on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method DescribeUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUser.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $DescribeUserResponse = $mq->DescribeUser(
      BrokerId => 'My__string',
      Username => 'My__string',

    );

    # Results:
    my $BrokerId      = $DescribeUserResponse->BrokerId;
    my $ConsoleAccess = $DescribeUserResponse->ConsoleAccess;
    my $Groups        = $DescribeUserResponse->Groups;
    my $Pending       = $DescribeUserResponse->Pending;
    my $Username      = $DescribeUserResponse->Username;

    # Returns a L<Paws::MQ::DescribeUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/DescribeUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerId => Str

The unique ID that Amazon MQ generates for the broker.



=head2 B<REQUIRED> Username => Str

The username of the ActiveMQ user. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 2-100 characters long.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUser in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

