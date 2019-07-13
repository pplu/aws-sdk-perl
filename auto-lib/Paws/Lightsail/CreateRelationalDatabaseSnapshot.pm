
package Paws::Lightsail::CreateRelationalDatabaseSnapshot;
  use Moose;
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);
  has RelationalDatabaseSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseSnapshotName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRelationalDatabaseSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateRelationalDatabaseSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateRelationalDatabaseSnapshot - Arguments for method CreateRelationalDatabaseSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRelationalDatabaseSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateRelationalDatabaseSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRelationalDatabaseSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateRelationalDatabaseSnapshotResult =
      $lightsail->CreateRelationalDatabaseSnapshot(
      RelationalDatabaseName         => 'MyResourceName',
      RelationalDatabaseSnapshotName => 'MyResourceName',
      Tags                           => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      );

    # Results:
    my $Operations = $CreateRelationalDatabaseSnapshotResult->Operations;

  # Returns a L<Paws::Lightsail::CreateRelationalDatabaseSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateRelationalDatabaseSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of the database on which to base your new snapshot.



=head2 B<REQUIRED> RelationalDatabaseSnapshotName => Str

The name for your new database snapshot.

Constraints:

=over

=item *

Must contain from 2 to 255 alphanumeric characters, or hyphens.

=item *

The first and last character must be a letter or number.

=back




=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRelationalDatabaseSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

