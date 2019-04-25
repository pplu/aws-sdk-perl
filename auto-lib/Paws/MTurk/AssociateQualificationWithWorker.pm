
package Paws::MTurk::AssociateQualificationWithWorker;
  use Moose;
  has IntegerValue => (is => 'ro', isa => 'Int');
  has QualificationTypeId => (is => 'ro', isa => 'Str', required => 1);
  has SendNotification => (is => 'ro', isa => 'Bool');
  has WorkerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateQualificationWithWorker');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::AssociateQualificationWithWorkerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::AssociateQualificationWithWorker - Arguments for method AssociateQualificationWithWorker on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateQualificationWithWorker on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method AssociateQualificationWithWorker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateQualificationWithWorker.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $AssociateQualificationWithWorkerResponse =
      $mturk -requester->AssociateQualificationWithWorker(
      QualificationTypeId => 'MyEntityId',
      WorkerId            => 'MyCustomerId',
      IntegerValue        => 1,                # OPTIONAL
      SendNotification    => 1,                # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/AssociateQualificationWithWorker>

=head1 ATTRIBUTES


=head2 IntegerValue => Int

The value of the Qualification to assign.



=head2 B<REQUIRED> QualificationTypeId => Str

The ID of the Qualification type to use for the assigned Qualification.



=head2 SendNotification => Bool

Specifies whether to send a notification email message to the Worker
saying that the qualification was assigned to the Worker. Note: this is
true by default.



=head2 B<REQUIRED> WorkerId => Str

The ID of the Worker to whom the Qualification is being assigned.
Worker IDs are included with submitted HIT assignments and
Qualification requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateQualificationWithWorker in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

