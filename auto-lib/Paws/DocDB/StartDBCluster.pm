# Generated from callargs_class.tt

package Paws::DocDB::StartDBCluster;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DocDB::Types qw//;
  has DBClusterIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartDBCluster');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DocDB::StartDBClusterResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'StartDBClusterResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DBClusterIdentifier' => {
                                          'type' => 'Str'
                                        }
             },
  'IsRequired' => {
                    'DBClusterIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::StartDBCluster - Arguments for method StartDBCluster on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDBCluster on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method StartDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $StartDBClusterResult = $rds->StartDBCluster(
      DBClusterIdentifier => 'MyString',

    );

    # Results:
    my $DBCluster = $StartDBClusterResult->DBCluster;

    # Returns a L<Paws::DocDB::StartDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StartDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The identifier of the cluster to restart. Example:
C<docdb-2019-05-28-15-24-52>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDBCluster in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

