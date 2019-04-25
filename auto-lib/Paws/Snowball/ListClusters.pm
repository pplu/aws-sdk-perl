
package Paws::Snowball::ListClusters;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::ListClustersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListClusters - Arguments for method ListClusters on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusters on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method ListClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusters.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    # To get a list of clusters that you've created for AWS Snowball
    # Returns an array of ClusterListEntry objects of the specified length. Each
    # ClusterListEntry object contains a cluster's state, a cluster's ID, and
    # other important status information.
    my $ListClustersResult = $snowball->ListClusters();

    # Results:
    my $ClusterListEntries = $ListClustersResult->ClusterListEntries;

    # Returns a L<Paws::Snowball::ListClustersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/ListClusters>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of C<ClusterListEntry> objects to return.



=head2 NextToken => Str

HTTP requests are stateless. To identify what object comes "next" in
the list of C<ClusterListEntry> objects, you have the option of
specifying C<NextToken> as the starting point for your returned list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusters in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

