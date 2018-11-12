
package Paws::DS::CreateLogSubscription;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLogSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::CreateLogSubscriptionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateLogSubscription - Arguments for method CreateLogSubscription on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLogSubscription on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method CreateLogSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLogSubscription.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $CreateLogSubscriptionResult = $ds->CreateLogSubscription(
      DirectoryId  => 'MyDirectoryId',
      LogGroupName => 'MyLogGroupName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/CreateLogSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

Identifier (ID) of the directory to which you want to subscribe and
receive real-time logs to your specified CloudWatch log group.



=head2 B<REQUIRED> LogGroupName => Str

The name of the CloudWatch log group where the real-time domain
controller logs are forwarded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLogSubscription in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

