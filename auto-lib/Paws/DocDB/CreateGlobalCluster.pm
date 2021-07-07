
package Paws::DocDB::CreateGlobalCluster;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has SourceDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::CreateGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CreateGlobalCluster - Arguments for method CreateGlobalCluster on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGlobalCluster on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method CreateGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CreateGlobalClusterResult = $rds->CreateGlobalCluster(
      GlobalClusterIdentifier   => 'MyGlobalClusterIdentifier',
      DatabaseName              => 'MyString',                    # OPTIONAL
      DeletionProtection        => 1,                             # OPTIONAL
      Engine                    => 'MyString',                    # OPTIONAL
      EngineVersion             => 'MyString',                    # OPTIONAL
      SourceDBClusterIdentifier => 'MyString',                    # OPTIONAL
      StorageEncrypted          => 1,                             # OPTIONAL
    );

    # Results:
    my $GlobalCluster = $CreateGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::DocDB::CreateGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateGlobalCluster>

=head1 ATTRIBUTES


=head2 DatabaseName => Str

The name for your database of up to 64 alpha-numeric characters. If you
do not provide a name, Amazon DocumentDB will not create a database in
the global cluster you are creating.



=head2 DeletionProtection => Bool

The deletion protection setting for the new global cluster. The global
cluster can't be deleted when deletion protection is enabled.



=head2 Engine => Str

The name of the database engine to be used for this cluster.



=head2 EngineVersion => Str

The engine version of the global cluster.



=head2 B<REQUIRED> GlobalClusterIdentifier => Str

The cluster identifier of the new global cluster.



=head2 SourceDBClusterIdentifier => Str

The Amazon Resource Name (ARN) to use as the primary cluster of the
global cluster. This parameter is optional.



=head2 StorageEncrypted => Bool

The storage encryption setting for the new global cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGlobalCluster in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

