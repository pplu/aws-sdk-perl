
package Paws::Lightsail::DeleteRelationalDatabase;
  use Moose;
  has FinalRelationalDatabaseSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'finalRelationalDatabaseSnapshotName' );
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);
  has SkipFinalSnapshot => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'skipFinalSnapshot' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRelationalDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteRelationalDatabaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteRelationalDatabase - Arguments for method DeleteRelationalDatabase on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRelationalDatabase on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteRelationalDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRelationalDatabase.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteRelationalDatabaseResult = $lightsail->DeleteRelationalDatabase(
      RelationalDatabaseName              => 'MyResourceName',
      FinalRelationalDatabaseSnapshotName => 'MyResourceName',    # OPTIONAL
      SkipFinalSnapshot                   => 1,                   # OPTIONAL
    );

    # Results:
    my $Operations = $DeleteRelationalDatabaseResult->Operations;

    # Returns a L<Paws::Lightsail::DeleteRelationalDatabaseResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteRelationalDatabase>

=head1 ATTRIBUTES


=head2 FinalRelationalDatabaseSnapshotName => Str

The name of the database snapshot created if C<skip final snapshot> is
C<false>, which is the default value for that parameter.

Specifying this parameter and also specifying the C<skip final
snapshot> parameter to C<true> results in an error.

Constraints:

=over

=item *

Must contain from 2 to 255 alphanumeric characters, or hyphens.

=item *

The first and last character must be a letter or number.

=back




=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of the database that you are deleting.



=head2 SkipFinalSnapshot => Bool

Determines whether a final database snapshot is created before your
database is deleted. If C<true> is specified, no database snapshot is
created. If C<false> is specified, a database snapshot is created
before your database is deleted.

You must specify the C<final relational database snapshot name>
parameter if the C<skip final snapshot> parameter is C<false>.

Default: C<false>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRelationalDatabase in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

