package Paws::SSM::AssociationVersionInfo;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has AssociationName => (is => 'ro', isa => 'Str');
  has AssociationVersion => (is => 'ro', isa => 'Str');
  has ComplianceSeverity => (is => 'ro', isa => 'Str');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutputLocation => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputLocation');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AssociationVersionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AssociationVersionInfo object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AssociationVersionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

Information about the association version.

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The ID created by the system when the association was created.


=head2 AssociationName => Str

  The name specified for the association version when the association
version was created.


=head2 AssociationVersion => Str

  The association version.


=head2 ComplianceSeverity => Str

  The severity level that is assigned to the association.


=head2 CreatedDate => Str

  The date the association version was created.


=head2 DocumentVersion => Str

  The version of a Systems Manager document used when the association
version was created.


=head2 MaxConcurrency => Str

  The maximum number of targets allowed to run the association at the
same time. You can specify a number, for example 10, or a percentage of
the target set, for example 10%. The default value is 100%, which means
all targets run the association at the same time.

If a new instance starts and attempts to execute an association while
Systems Manager is executing MaxConcurrency associations, the
association is allowed to run. During the next association interval,
the new instance will process its association within the limit
specified for MaxConcurrency.


=head2 MaxErrors => Str

  The number of errors that are allowed before the system stops sending
requests to run the association on additional targets. You can specify
either an absolute number of errors, for example 10, or a percentage of
the target set, for example 10%. If you specify 3, for example, the
system stops sending requests when the fourth error is received. If you
specify 0, then the system stops sending requests after the first error
is returned. If you run an association on 50 instances and set MaxError
to 10%, then the system stops sending the request when the sixth error
is received.

Executions that are already running an association when MaxErrors is
reached are allowed to complete, but some of these executions may fail
as well. If you need to ensure that there won't be more than max-errors
failed executions, set MaxConcurrency to 1 so that executions proceed
one at a time.


=head2 Name => Str

  The name specified when the association was created.


=head2 OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>

  The location in Amazon S3 specified for the association when the
association version was created.


=head2 Parameters => L<Paws::SSM::Parameters>

  Parameters specified when the association version was created.


=head2 ScheduleExpression => Str

  The cron or rate schedule specified for the association when the
association version was created.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

  The targets specified for the association when the association version
was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

