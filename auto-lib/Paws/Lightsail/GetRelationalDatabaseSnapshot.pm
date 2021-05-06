
package Paws::Lightsail::GetRelationalDatabaseSnapshot;
  use Moose;
  has RelationalDatabaseSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseSnapshotName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRelationalDatabaseSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetRelationalDatabaseSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseSnapshot - Arguments for method GetRelationalDatabaseSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRelationalDatabaseSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetRelationalDatabaseSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRelationalDatabaseSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetRelationalDatabaseSnapshotResult =
      $lightsail->GetRelationalDatabaseSnapshot(
      RelationalDatabaseSnapshotName => 'MyResourceName',

      );

    # Results:
    my $RelationalDatabaseSnapshot =
      $GetRelationalDatabaseSnapshotResult->RelationalDatabaseSnapshot;

    # Returns a L<Paws::Lightsail::GetRelationalDatabaseSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetRelationalDatabaseSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RelationalDatabaseSnapshotName => Str

The name of the database snapshot for which to get information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRelationalDatabaseSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

