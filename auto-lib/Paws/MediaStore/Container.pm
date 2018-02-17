package Paws::MediaStore::Container;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::Container

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaStore::Container object:

  $service_obj->Method(Att1 => { ARN => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaStore::Container object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

This section describes operations that you can perform on an AWS
Elemental MediaStore container.

=head1 ATTRIBUTES


=head2 ARN => Str

  The Amazon Resource Name (ARN) of the container. The ARN has the
following format:

arn:aws:E<lt>regionE<gt>:E<lt>account that owns this
containerE<gt>:container/E<lt>name of containerE<gt>

For example: arn:aws:mediastore:us-west-2:111122223333:container/movies


=head2 CreationTime => Str

  Unix timestamp.


=head2 Endpoint => Str

  The DNS endpoint of the container. Use the endpoint to identify the
specific container when sending requests to the data plane. The service
assigns this value when the container is created. Once the value has
been assigned, it does not change.


=head2 Name => Str

  The name of the container.


=head2 Status => Str

  The status of container creation or deletion. The status is one of the
following: C<CREATING>, C<ACTIVE>, or C<DELETING>. While the service is
creating the container, the status is C<CREATING>. When the endpoint is
available, the status changes to C<ACTIVE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

