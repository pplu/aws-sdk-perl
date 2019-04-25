
package Paws::MTurk::GetQualificationType;
  use Moose;
  has QualificationTypeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQualificationType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::GetQualificationTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetQualificationType - Arguments for method GetQualificationType on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQualificationType on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method GetQualificationType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQualificationType.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $GetQualificationTypeResponse = $mturk -requester->GetQualificationType(
      QualificationTypeId => 'MyEntityId',

    );

    # Results:
    my $QualificationType = $GetQualificationTypeResponse->QualificationType;

    # Returns a L<Paws::MTurk::GetQualificationTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/GetQualificationType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QualificationTypeId => Str

The ID of the QualificationType.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQualificationType in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

