
package Paws::DMS::ReloadTables;
  use Moose;
  has ReloadOption => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str', required => 1);
  has TablesToReload => (is => 'ro', isa => 'ArrayRef[Paws::DMS::TableToReload]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReloadTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ReloadTablesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReloadTables - Arguments for method ReloadTables on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReloadTables on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ReloadTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReloadTables.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ReloadTablesResponse = $dms->ReloadTables(
      ReplicationTaskArn => 'MyString',
      TablesToReload     => [
        {
          SchemaName => 'MyString',
          TableName  => 'MyString',
        },
        ...
      ],
      ReloadOption => 'data-reload',    # OPTIONAL
    );

    # Results:
    my $ReplicationTaskArn = $ReloadTablesResponse->ReplicationTaskArn;

    # Returns a L<Paws::DMS::ReloadTablesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ReloadTables>

=head1 ATTRIBUTES


=head2 ReloadOption => Str

Options for reload. Specify C<data-reload> to reload the data and
re-validate it if validation is enabled. Specify C<validate-only> to
re-validate the table. This option applies only when validation is
enabled for the task.

Valid values: data-reload, validate-only

Default value is data-reload.

Valid values are: C<"data-reload">, C<"validate-only">

=head2 B<REQUIRED> ReplicationTaskArn => Str

The Amazon Resource Name (ARN) of the replication task.



=head2 B<REQUIRED> TablesToReload => ArrayRef[L<Paws::DMS::TableToReload>]

The name and schema of the table to be reloaded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReloadTables in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

