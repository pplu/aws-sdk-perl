package Paws::EC2::LaunchPermission;
  use Moose;
  has Group => (is => 'ro', isa => 'Str', request_name => 'group', traits => ['NameInRequest']);
  has UserId => (is => 'ro', isa => 'Str', request_name => 'userId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchPermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchPermission object:

  $service_obj->Method(Att1 => { Group => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchPermission object:

  $result = $service_obj->Method(...);
  $result->Att1->Group

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Group => Str

  The name of the group.


=head2 UserId => Str

  The AWS account ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
