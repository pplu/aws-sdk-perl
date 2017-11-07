package Paws::OpsWorks::ServiceError;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ServiceErrorId => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ServiceError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::ServiceError object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::ServiceError object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes an AWS OpsWorks Stacks service error.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  When the error occurred.


=head2 InstanceId => Str

  The instance ID.


=head2 Message => Str

  A message that describes the error.


=head2 ServiceErrorId => Str

  The error ID.


=head2 StackId => Str

  The stack ID.


=head2 Type => Str

  The error type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

