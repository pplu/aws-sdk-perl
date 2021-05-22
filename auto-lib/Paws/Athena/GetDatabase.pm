
package Paws::Athena::GetDatabase;
  use Moose;
  has CatalogName => (is => 'ro', isa => 'Str', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::GetDatabaseOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetDatabase - Arguments for method GetDatabase on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDatabase on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method GetDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDatabase.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $GetDatabaseOutput = $athena->GetDatabase(
      CatalogName  => 'MyCatalogNameString',
      DatabaseName => 'MyNameString',

    );

    # Results:
    my $Database = $GetDatabaseOutput->Database;

    # Returns a L<Paws::Athena::GetDatabaseOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/GetDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogName => Str

The name of the data catalog that contains the database to return.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDatabase in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

