
package Paws::DocDB::ApplyPendingMaintenanceAction;
  use Moose;
  has ApplyAction => (is => 'ro', isa => 'Str', required => 1);
  has OptInType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplyPendingMaintenanceAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::ApplyPendingMaintenanceActionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ApplyPendingMaintenanceActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ApplyPendingMaintenanceAction - Arguments for method ApplyPendingMaintenanceAction on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplyPendingMaintenanceAction on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method ApplyPendingMaintenanceAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApplyPendingMaintenanceAction.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $ApplyPendingMaintenanceActionResult =
      $rds->ApplyPendingMaintenanceAction(
      ApplyAction        => 'MyString',
      OptInType          => 'MyString',
      ResourceIdentifier => 'MyString',

      );

    # Results:
    my $ResourcePendingMaintenanceActions =
      $ApplyPendingMaintenanceActionResult->ResourcePendingMaintenanceActions;

    # Returns a L<Paws::DocDB::ApplyPendingMaintenanceActionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ApplyPendingMaintenanceAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplyAction => Str

The pending maintenance action to apply to this resource.

Valid values: C<system-update>, C<db-upgrade>



=head2 B<REQUIRED> OptInType => Str

A value that specifies the type of opt-in request or undoes an opt-in
request. An opt-in request of type C<immediate> can't be undone.

Valid values:

=over

=item *

C<immediate> - Apply the maintenance action immediately.

=item *

C<next-maintenance> - Apply the maintenance action during the next
maintenance window for the resource.

=item *

C<undo-opt-in> - Cancel any existing C<next-maintenance> opt-in
requests.

=back




=head2 B<REQUIRED> ResourceIdentifier => Str

The Amazon Resource Name (ARN) of the resource that the pending
maintenance action applies to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplyPendingMaintenanceAction in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

