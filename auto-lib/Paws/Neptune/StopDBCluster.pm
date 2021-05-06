
package Paws::Neptune::StopDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::StopDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StopDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::StopDBCluster - Arguments for method StopDBCluster on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopDBCluster on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method StopDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $StopDBClusterResult = $rds->StopDBCluster(
      DBClusterIdentifier => 'MyString',

    );

    # Results:
    my $DBCluster = $StopDBClusterResult->DBCluster;

    # Returns a L<Paws::Neptune::StopDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StopDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier of the Neptune DB cluster to be stopped. This
parameter is stored as a lowercase string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopDBCluster in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

