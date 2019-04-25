
package Paws::MTurk::CreateWorkerBlock;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str', required => 1);
  has WorkerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkerBlock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::CreateWorkerBlockResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::CreateWorkerBlock - Arguments for method CreateWorkerBlock on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkerBlock on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method CreateWorkerBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkerBlock.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $CreateWorkerBlockResponse = $mturk -requester->CreateWorkerBlock(
      Reason   => 'MyString',
      WorkerId => 'MyCustomerId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/CreateWorkerBlock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Reason => Str

A message explaining the reason for blocking the Worker. This parameter
enables you to keep track of your Workers. The Worker does not see this
message.



=head2 B<REQUIRED> WorkerId => Str

The ID of the Worker to block.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkerBlock in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

