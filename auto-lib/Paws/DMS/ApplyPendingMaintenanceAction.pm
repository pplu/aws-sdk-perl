# Generated from json/callargs_class.tt

package Paws::DMS::ApplyPendingMaintenanceAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DMS::Types qw//;
  has ApplyAction => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OptInType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ReplicationInstanceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ApplyPendingMaintenanceAction');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DMS::ApplyPendingMaintenanceActionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'OptInType' => 1,
                    'ReplicationInstanceArn' => 1,
                    'ApplyAction' => 1
                  },
  'types' => {
               'ReplicationInstanceArn' => {
                                             'type' => 'Str'
                                           },
               'OptInType' => {
                                'type' => 'Str'
                              },
               'ApplyAction' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ApplyPendingMaintenanceAction - Arguments for method ApplyPendingMaintenanceAction on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplyPendingMaintenanceAction on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ApplyPendingMaintenanceAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApplyPendingMaintenanceAction.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ApplyPendingMaintenanceActionResponse =
      $dms->ApplyPendingMaintenanceAction(
      ApplyAction            => 'MyString',
      OptInType              => 'MyString',
      ReplicationInstanceArn => 'MyString',

      );

    # Results:
    my $ResourcePendingMaintenanceActions =
      $ApplyPendingMaintenanceActionResponse->ResourcePendingMaintenanceActions;

    # Returns a L<Paws::DMS::ApplyPendingMaintenanceActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ApplyPendingMaintenanceAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplyAction => Str

The pending maintenance action to apply to this resource.



=head2 B<REQUIRED> OptInType => Str

A value that specifies the type of opt-in request, or undoes an opt-in
request. You can't undo an opt-in request of type C<immediate>.

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




=head2 B<REQUIRED> ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of the AWS DMS resource that the pending
maintenance action applies to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplyPendingMaintenanceAction in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

