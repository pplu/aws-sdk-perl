
package Paws::CodeDeploy::ListApplicationRevisions;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has Deployed => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deployed' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Bucket' );
  has S3KeyPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3KeyPrefix' );
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationRevisions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListApplicationRevisionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplicationRevisions - Arguments for method ListApplicationRevisions on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationRevisions on the
L<AWS CodeDeploy|Paws::CodeDeploy> service. Use the attributes of this class
as arguments to method ListApplicationRevisions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationRevisions.

=head1 SYNOPSIS

    my $codedeploy = Paws->service('CodeDeploy');
    my $ListApplicationRevisionsOutput = $codedeploy->ListApplicationRevisions(
      ApplicationName => 'MyApplicationName',
      Deployed        => 'include',             # OPTIONAL
      NextToken       => 'MyNextToken',         # OPTIONAL
      S3Bucket        => 'MyS3Bucket',          # OPTIONAL
      S3KeyPrefix     => 'MyS3Key',             # OPTIONAL
      SortBy          => 'registerTime',        # OPTIONAL
      SortOrder       => 'ascending',           # OPTIONAL
    );

    # Results:
    my $NextToken = $ListApplicationRevisionsOutput->NextToken;
    my $Revisions = $ListApplicationRevisionsOutput->Revisions;

    # Returns a L<Paws::CodeDeploy::ListApplicationRevisionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codedeploy/ListApplicationRevisions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the IAM user
or AWS account.



=head2 Deployed => Str

Whether to list revisions based on whether the revision is the target
revision of an deployment group:

=over

=item *

include: List revisions that are target revisions of a deployment
group.

=item *

exclude: Do not list revisions that are target revisions of a
deployment group.

=item *

ignore: List all revisions.

=back


Valid values are: C<"include">, C<"exclude">, C<"ignore">

=head2 NextToken => Str

An identifier returned from the previous C<ListApplicationRevisions>
call. It can be used to return the next set of applications in the
list.



=head2 S3Bucket => Str

An Amazon S3 bucket name to limit the search for revisions.

If set to null, all of the user's buckets are searched.



=head2 S3KeyPrefix => Str

A key prefix for the set of Amazon S3 objects to limit the search for
revisions.



=head2 SortBy => Str

The column name to use to sort the list results:

=over

=item *

registerTime: Sort by the time the revisions were registered with AWS
CodeDeploy.

=item *

firstUsedTime: Sort by the time the revisions were first used in a
deployment.

=item *

lastUsedTime: Sort by the time the revisions were last used in a
deployment.

=back

If not specified or set to null, the results are returned in an
arbitrary order.

Valid values are: C<"registerTime">, C<"firstUsedTime">, C<"lastUsedTime">

=head2 SortOrder => Str

The order in which to sort the list results:

=over

=item *

ascending: ascending order.

=item *

descending: descending order.

=back

If not specified, the results are sorted in ascending order.

If set to null, the results are sorted in an arbitrary order.

Valid values are: C<"ascending">, C<"descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationRevisions in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

