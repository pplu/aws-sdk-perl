
package Paws::Snowball::ListClusterJobs;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusterJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::ListClusterJobsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListClusterJobs - Arguments for method ListClusterJobs on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusterJobs on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method ListClusterJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusterJobs.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    # To get a list of jobs in a cluster that you've created for AWS Snowball
    # Returns an array of JobListEntry objects of the specified length. Each
    # JobListEntry object is for a job in the specified cluster and contains a
    # job's state, a job's ID, and other information.
    my $ListClusterJobsResult = $snowball->ListClusterJobs(
      {
        'ClusterId' => 'CID123e4567-e89b-12d3-a456-426655440000'
      }
    );

    # Results:
    my $JobListEntries = $ListClusterJobsResult->JobListEntries;

    # Returns a L<Paws::Snowball::ListClusterJobsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/ListClusterJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The 39-character ID for the cluster that you want to list, for example
C<CID123e4567-e89b-12d3-a456-426655440000>.



=head2 MaxResults => Int

The number of C<JobListEntry> objects to return.



=head2 NextToken => Str

HTTP requests are stateless. To identify what object comes "next" in
the list of C<JobListEntry> objects, you have the option of specifying
C<NextToken> as the starting point for your returned list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusterJobs in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

