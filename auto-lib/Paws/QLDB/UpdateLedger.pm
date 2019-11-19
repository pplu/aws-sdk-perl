
package Paws::QLDB::UpdateLedger;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::QLDB::Types qw//;
  has DeletionProtection => (is => 'ro', isa => Bool, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateLedger');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/ledgers/{name}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::QLDB::UpdateLedgerResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'Name' => 'name'
                  },
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'DeletionProtection' => {
                                         'type' => 'Bool'
                                       },
               'Name' => {
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

Paws::QLDB::UpdateLedger - Arguments for method UpdateLedger on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLedger on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method UpdateLedger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLedger.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $UpdateLedgerResponse = $qldb->UpdateLedger(
      Name               => 'MyLedgerName',
      DeletionProtection => 1,                # OPTIONAL
    );

    # Results:
    my $Arn                = $UpdateLedgerResponse->Arn;
    my $CreationDateTime   = $UpdateLedgerResponse->CreationDateTime;
    my $DeletionProtection = $UpdateLedgerResponse->DeletionProtection;
    my $Name               = $UpdateLedgerResponse->Name;
    my $State              = $UpdateLedgerResponse->State;

    # Returns a L<Paws::QLDB::UpdateLedgerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/UpdateLedger>

=head1 ATTRIBUTES


=head2 DeletionProtection => Bool

The flag that prevents a ledger from being deleted by any user. If not
provided on ledger creation, this feature is enabled (C<true>) by
default.

If deletion protection is enabled, you must first disable it before you
can delete the ledger using the QLDB API or the AWS Command Line
Interface (AWS CLI). You can disable it by calling the C<UpdateLedger>
operation to set the flag to C<false>. The QLDB console disables
deletion protection for you when you use it to delete a ledger.



=head2 B<REQUIRED> Name => Str

The name of the ledger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLedger in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

