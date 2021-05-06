
package Paws::MTurk::CreateQualificationType;
  use Moose;
  has AnswerKey => (is => 'ro', isa => 'Str');
  has AutoGranted => (is => 'ro', isa => 'Bool');
  has AutoGrantedValue => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Keywords => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has QualificationTypeStatus => (is => 'ro', isa => 'Str', required => 1);
  has RetryDelayInSeconds => (is => 'ro', isa => 'Int');
  has Test => (is => 'ro', isa => 'Str');
  has TestDurationInSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQualificationType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::CreateQualificationTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::CreateQualificationType - Arguments for method CreateQualificationType on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQualificationType on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method CreateQualificationType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQualificationType.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $CreateQualificationTypeResponse =
      $mturk -requester->CreateQualificationType(
      Description             => 'MyString',
      Name                    => 'MyString',
      QualificationTypeStatus => 'Active',
      AnswerKey               => 'MyString',    # OPTIONAL
      AutoGranted             => 1,             # OPTIONAL
      AutoGrantedValue        => 1,             # OPTIONAL
      Keywords                => 'MyString',    # OPTIONAL
      RetryDelayInSeconds     => 1,             # OPTIONAL
      Test                    => 'MyString',    # OPTIONAL
      TestDurationInSeconds   => 1,             # OPTIONAL
      );

    # Results:
    my $QualificationType = $CreateQualificationTypeResponse->QualificationType;

    # Returns a L<Paws::MTurk::CreateQualificationTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/CreateQualificationType>

=head1 ATTRIBUTES


=head2 AnswerKey => Str

The answers to the Qualification test specified in the Test parameter,
in the form of an AnswerKey data structure.

Constraints: Must not be longer than 65535 bytes.

Constraints: None. If not specified, you must process Qualification
requests manually.



=head2 AutoGranted => Bool

Specifies whether requests for the Qualification type are granted
immediately, without prompting the Worker with a Qualification test.

Constraints: If the Test parameter is specified, this parameter cannot
be true.



=head2 AutoGrantedValue => Int

The Qualification value to use for automatically granted
Qualifications. This parameter is used only if the AutoGranted
parameter is true.



=head2 B<REQUIRED> Description => Str

A long description for the Qualification type. On the Amazon Mechanical
Turk website, the long description is displayed when a Worker examines
a Qualification type.



=head2 Keywords => Str

One or more words or phrases that describe the Qualification type,
separated by commas. The keywords of a type make the type easier to
find during a search.



=head2 B<REQUIRED> Name => Str

The name you give to the Qualification type. The type name is used to
represent the Qualification to Workers, and to find the type using a
Qualification type search. It must be unique across all of your
Qualification types.



=head2 B<REQUIRED> QualificationTypeStatus => Str

The initial status of the Qualification type.

Constraints: Valid values are: Active | Inactive

Valid values are: C<"Active">, C<"Inactive">

=head2 RetryDelayInSeconds => Int

The number of seconds that a Worker must wait after requesting a
Qualification of the Qualification type before the worker can retry the
Qualification request.

Constraints: None. If not specified, retries are disabled and Workers
can request a Qualification of this type only once, even if the Worker
has not been granted the Qualification. It is not possible to disable
retries for a Qualification type after it has been created with retries
enabled. If you want to disable retries, you must delete existing
retry-enabled Qualification type and then create a new Qualification
type with retries disabled.



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

This class forms part of L<Paws>, documenting arguments for method CreateQualificationType in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

