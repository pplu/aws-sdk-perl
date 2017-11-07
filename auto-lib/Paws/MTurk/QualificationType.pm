package Paws::MTurk::QualificationType;
  use Moose;
  has AnswerKey => (is => 'ro', isa => 'Str');
  has AutoGranted => (is => 'ro', isa => 'Bool');
  has AutoGrantedValue => (is => 'ro', isa => 'Int');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsRequestable => (is => 'ro', isa => 'Bool');
  has Keywords => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has QualificationTypeId => (is => 'ro', isa => 'Str');
  has QualificationTypeStatus => (is => 'ro', isa => 'Str');
  has RetryDelayInSeconds => (is => 'ro', isa => 'Int');
  has Test => (is => 'ro', isa => 'Str');
  has TestDurationInSeconds => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::QualificationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::QualificationType object:

  $service_obj->Method(Att1 => { AnswerKey => $value, ..., TestDurationInSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::QualificationType object:

  $result = $service_obj->Method(...);
  $result->Att1->AnswerKey

=head1 DESCRIPTION

The QualificationType data structure represents a Qualification type, a
description of a property of a Worker that must match the requirements
of a HIT for the Worker to be able to accept the HIT. The type also
describes how a Worker can obtain a Qualification of that type, such as
through a Qualification test.

=head1 ATTRIBUTES


=head2 AnswerKey => Str

  The answers to the Qualification test specified in the Test parameter.


=head2 AutoGranted => Bool

  Specifies that requests for the Qualification type are granted
immediately, without prompting the Worker with a Qualification test.
Valid values are True | False.


=head2 AutoGrantedValue => Int

  The Qualification integer value to use for automatically granted
Qualifications, if AutoGranted is true. This is 1 by default.


=head2 CreationTime => Str

  The date and time the Qualification type was created.


=head2 Description => Str

  A long description for the Qualification type.


=head2 IsRequestable => Bool

  Specifies whether the Qualification type is one that a user can request
through the Amazon Mechanical Turk web site, such as by taking a
Qualification test. This value is False for Qualifications assigned
automatically by the system. Valid values are True | False.


=head2 Keywords => Str

  One or more words or phrases that describe theQualification type,
separated by commas. The Keywords make the type easier to find using a
search.


=head2 Name => Str

  The name of the Qualification type. The type name is used to identify
the type, and to find the type using a Qualification type search.


=head2 QualificationTypeId => Str

  A unique identifier for the Qualification type. A Qualification type is
given a Qualification type ID when you call the CreateQualificationType
operation.


=head2 QualificationTypeStatus => Str

  The status of the Qualification type. A Qualification type's status
determines if users can apply to receive a Qualification of this type,
and if HITs can be created with requirements based on this type. Valid
values are Active | Inactive.


=head2 RetryDelayInSeconds => Int

  The amount of time, in seconds, Workers must wait after taking the
Qualification test before they can take it again. Workers can take a
Qualification test multiple times if they were not granted the
Qualification from a previous attempt, or if the test offers a gradient
score and they want a better score. If not specified, retries are
disabled and Workers can request a Qualification only once.


=head2 Test => Str

  The questions for a Qualification test associated with this
Qualification type that a user can take to obtain a Qualification of
this type. This parameter must be specified if AnswerKey is present. A
Qualification type cannot have both a specified Test parameter and an
AutoGranted value of true.


=head2 TestDurationInSeconds => Int

  The amount of time, in seconds, given to a Worker to complete the
Qualification test, beginning from the time the Worker requests the
Qualification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

