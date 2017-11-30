package Paws::AlexaForBusiness::UserData;
  use Moose;
  has Email => (is => 'ro', isa => 'Str');
  has EnrollmentId => (is => 'ro', isa => 'Str');
  has EnrollmentStatus => (is => 'ro', isa => 'Str');
  has FirstName => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has UserArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UserData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::UserData object:

  $service_obj->Method(Att1 => { Email => $value, ..., UserArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::UserData object:

  $result = $service_obj->Method(...);
  $result->Att1->Email

=head1 DESCRIPTION

Information related to a user.

=head1 ATTRIBUTES


=head2 Email => Str

  The email of a user.


=head2 EnrollmentId => Str

  The enrollment ARN of a user.


=head2 EnrollmentStatus => Str

  The enrollment status of a user.


=head2 FirstName => Str

  The first name of a user.


=head2 LastName => Str

  The last name of a user.


=head2 UserArn => Str

  The ARN of a user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

