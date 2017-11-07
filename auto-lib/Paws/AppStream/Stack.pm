package Paws::AppStream::Stack;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has StackErrors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::StackError]');
  has StorageConnectors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::StorageConnector]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::Stack

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::Stack object:

  $service_obj->Method(Att1 => { Arn => $value, ..., StorageConnectors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::Stack object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a stack.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the stack.


=head2 CreatedTime => Str

  The time the stack was created.


=head2 Description => Str

  The description displayed to end users.


=head2 DisplayName => Str

  The stack name displayed to end users.


=head2 B<REQUIRED> Name => Str

  The name of the stack.


=head2 StackErrors => ArrayRef[L<Paws::AppStream::StackError>]

  The errors for the stack.


=head2 StorageConnectors => ArrayRef[L<Paws::AppStream::StorageConnector>]

  The storage connectors to enable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

