
package Paws::MTurk::GetFileUploadURL;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str', required => 1);
  has QuestionIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFileUploadURL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::GetFileUploadURLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetFileUploadURL - Arguments for method GetFileUploadURL on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFileUploadURL on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method GetFileUploadURL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFileUploadURL.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $GetFileUploadURLResponse = $mturk -requester->GetFileUploadURL(
      AssignmentId       => 'MyEntityId',
      QuestionIdentifier => 'MyString',

    );

    # Results:
    my $FileUploadURL = $GetFileUploadURLResponse->FileUploadURL;

    # Returns a L<Paws::MTurk::GetFileUploadURLResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/GetFileUploadURL>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentId => Str

The ID of the assignment that contains the question with a
FileUploadAnswer.



=head2 B<REQUIRED> QuestionIdentifier => Str

The identifier of the question with a FileUploadAnswer, as specified in
the QuestionForm of the HIT.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFileUploadURL in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

