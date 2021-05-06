
package Paws::MTurk::UpdateQualificationType;
  use Moose;
  has AnswerKey => (is => 'ro', isa => 'Str');
  has AutoGranted => (is => 'ro', isa => 'Bool');
  has AutoGrantedValue => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has QualificationTypeId => (is => 'ro', isa => 'Str', required => 1);
  has QualificationTypeStatus => (is => 'ro', isa => 'Str');
  has RetryDelayInSeconds => (is => 'ro', isa => 'Int');
  has Test => (is => 'ro', isa => 'Str');
  has TestDurationInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQualificationType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::UpdateQualificationTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::UpdateQualificationType - Arguments for method UpdateQualificationType on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQualificationType on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method UpdateQualificationType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQualificationType.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $UpdateQualificationTypeResponse =
      $mturk -requester->UpdateQualificationType(
      QualificationTypeId     => 'MyEntityId',
      AnswerKey               => 'MyString',     # OPTIONAL
      AutoGranted             => 1,              # OPTIONAL
      AutoGrantedValue        => 1,              # OPTIONAL
      Description             => 'MyString',     # OPTIONAL
      QualificationTypeStatus => 'Active',       # OPTIONAL
      RetryDelayInSeconds     => 1,              # OPTIONAL
      Test                    => 'MyString',     # OPTIONAL
      TestDurationInSeconds   => 1,              # OPTIONAL
      );

    # Results:
    my $QualificationType = $UpdateQualificationTypeResponse->QualificationType;

    # Returns a L<Paws::MTurk::UpdateQualificationTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/UpdateQualificationType>

=head1 ATTRIBUTES


=head2 AnswerKey => Str

The answers to the Qualification test specified in the Test parameter,
in the form of an AnswerKey data structure.



=head2 AutoGranted => Bool

Specifies whether requests for the Qualification type are granted
immediately, without prompting the Worker with a Qualification test.

Constraints: If the Test parameter is specified, this parameter cannot
be true.



=head2 AutoGrantedValue => Int

The Qualification value to use for automatically granted
Qualifications. This parameter is used only if the AutoGranted
parameter is true.



=head2 Description => Str

The new description of the Qualification type.



=head2 B<REQUIRED> QualificationTypeId => Str

The ID of the Qualification type to update.



=head2 QualificationTypeStatus => Str

The new status of the Qualification type - Active | Inactive

Valid values are: C<"Active">, C<"Inactive">

=head2 RetryDelayInSeconds => Int

The amount of time, in seconds, that Workers must wait after requesting
a Qualification of the specified Qualification type before they can
retry the Qualification request. It is not possible to disable retries
for a Qualification type after it has been created with retries
enabled. If you want to disable retries, you must dispose of the
existing retry-enabled Qualification type using
DisposeQualificationType and then create a new Qualification type with
retries disabled using CreateQualificationType.



=head2 Test => Str

The questions for the Qualification test a Worker must answer correctly
to obtain a Qualification of this type. If this parameter is specified,
C<TestDurationInSeconds> must also be specified.

Constraints: Must not be longer than 65535 bytes. Must be a
QuestionForm data structure. This parameter cannot be specified if
AutoGranted is true.

Constraints: None. If not specified, the Worker may request the
Qualification without answering any questions.



=head2 TestDurationInSeconds => Int

The number of seconds the Worker has to complete the Qualification
test, starting from the time the Worker requests the Qualification.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQualificationType in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

