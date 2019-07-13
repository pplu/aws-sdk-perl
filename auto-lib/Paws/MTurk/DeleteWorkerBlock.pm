
package Paws::MTurk::DeleteWorkerBlock;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str');
  has WorkerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkerBlock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::DeleteWorkerBlockResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::DeleteWorkerBlock - Arguments for method DeleteWorkerBlock on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkerBlock on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method DeleteWorkerBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkerBlock.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $DeleteWorkerBlockResponse = $mturk -requester->DeleteWorkerBlock(
      WorkerId => 'MyCustomerId',
      Reason   => 'MyString',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/DeleteWorkerBlock>

=head1 ATTRIBUTES


=head2 Reason => Str

A message that explains the reason for unblocking the Worker. The
Worker does not see this message.



=head2 B<REQUIRED> WorkerId => Str

The ID of the Worker to unblock.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkerBlock in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

