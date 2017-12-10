package Paws::MTurk::Qualification;
  use Moose;
  has GrantTime => (is => 'ro', isa => 'Str');
  has IntegerValue => (is => 'ro', isa => 'Int');
  has LocaleValue => (is => 'ro', isa => 'Paws::MTurk::Locale');
  has QualificationTypeId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has WorkerId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::Qualification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::Qualification object:

  $service_obj->Method(Att1 => { GrantTime => $value, ..., WorkerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::Qualification object:

  $result = $service_obj->Method(...);
  $result->Att1->GrantTime

=head1 DESCRIPTION

The Qualification data structure represents a Qualification assigned to
a user, including the Qualification type and the value (score).

=head1 ATTRIBUTES


=head2 GrantTime => Str

  The date and time the Qualification was granted to the Worker. If the
Worker's Qualification was revoked, and then re-granted based on a new
Qualification request, GrantTime is the date and time of the last call
to the AcceptQualificationRequest operation.


=head2 IntegerValue => Int

  The value (score) of the Qualification, if the Qualification has an
integer value.


=head2 LocaleValue => L<Paws::MTurk::Locale>

  


=head2 QualificationTypeId => Str

  The ID of the Qualification type for the Qualification.


=head2 Status => Str

  The status of the Qualification. Valid values are Granted | Revoked.


=head2 WorkerId => Str

  The ID of the Worker who possesses the Qualification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

