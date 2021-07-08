
package Paws::QLDB::CreateLedger;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PermissionsMode => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::QLDB::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLedger');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::CreateLedgerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::CreateLedger - Arguments for method CreateLedger on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLedger on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method CreateLedger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLedger.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $CreateLedgerResponse = $qldb->CreateLedger(
      Name               => 'MyLedgerName',
      PermissionsMode    => 'ALLOW_ALL',
      DeletionProtection => 1,                # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateLedgerResponse->Arn;
    my $CreationDateTime   = $CreateLedgerResponse->CreationDateTime;
    my $DeletionProtection = $CreateLedgerResponse->DeletionProtection;
    my $Name               = $CreateLedgerResponse->Name;
    my $PermissionsMode    = $CreateLedgerResponse->PermissionsMode;
    my $State              = $CreateLedgerResponse->State;

    # Returns a L<Paws::QLDB::CreateLedgerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/CreateLedger>

=head1 ATTRIBUTES


=head2 DeletionProtection => Bool

The flag that prevents a ledger from being deleted by any user. If not
provided on ledger creation, this feature is enabled (C<true>) by
default.

If deletion protection is enabled, you must first disable it before you
can delete the ledger. You can disable it by calling the
C<UpdateLedger> operation to set the flag to C<false>.



=head2 B<REQUIRED> Name => Str

The name of the ledger that you want to create. The name must be unique
among all of your ledgers in the current AWS Region.

Naming constraints for ledger names are defined in Quotas in Amazon
QLDB
(https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming)
in the I<Amazon QLDB Developer Guide>.



=head2 B<REQUIRED> PermissionsMode => Str

The permissions mode to assign to the ledger that you want to create.
This parameter can have one of the following values:

=over

=item *

C<ALLOW_ALL>: A legacy permissions mode that enables access control
with API-level granularity for ledgers.

This mode allows users who have the C<SendCommand> API permission for
this ledger to run all PartiQL commands (hence, C<ALLOW_ALL>) on any
tables in the specified ledger. This mode disregards any table-level or
command-level IAM permissions policies that you create for the ledger.

=item *

C<STANDARD>: (I<Recommended>) A permissions mode that enables access
control with finer granularity for ledgers, tables, and PartiQL
commands.

By default, this mode denies all user requests to run any PartiQL
commands on any tables in this ledger. To allow PartiQL commands to
run, you must create IAM permissions policies for specific table
resources and PartiQL actions, in addition to the C<SendCommand> API
permission for the ledger. For information, see Getting started with
the standard permissions mode
(https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html)
in the I<Amazon QLDB Developer Guide>.

=back

We strongly recommend using the C<STANDARD> permissions mode to
maximize the security of your ledger data.

Valid values are: C<"ALLOW_ALL">, C<"STANDARD">

=head2 Tags => L<Paws::QLDB::Tags>

The key-value pairs to add as tags to the ledger that you want to
create. Tag keys are case sensitive. Tag values are case sensitive and
can be null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLedger in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

