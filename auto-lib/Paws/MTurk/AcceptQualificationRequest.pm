
package Paws::MTurk::AcceptQualificationRequest;
  use Moose;
  has IntegerValue => (is => 'ro', isa => 'Int');
  has QualificationRequestId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptQualificationRequest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::AcceptQualificationRequestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::AcceptQualificationRequest - Arguments for method AcceptQualificationRequest on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptQualificationRequest on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method AcceptQualificationRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptQualificationRequest.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $AcceptQualificationRequestResponse =
      $mturk -requester->AcceptQualificationRequest(
      QualificationRequestId => 'MyString',
      IntegerValue           => 1,            # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/AcceptQualificationRequest>

=head1 ATTRIBUTES


=head2 IntegerValue => Int

The value of the Qualification. You can omit this value if you are
using the presence or absence of the Qualification as the basis for a
HIT requirement.



=head2 B<REQUIRED> QualificationRequestId => Str

The ID of the Qualification request, as returned by the
C<GetQualificationRequests> operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptQualificationRequest in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

