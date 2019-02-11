package Paws::ResourceGroups::ResourceQuery;
  use Moose;
  has Query => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::ResourceQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceGroups::ResourceQuery object:

  $service_obj->Method(Att1 => { Query => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceGroups::ResourceQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->Query

=head1 DESCRIPTION

The query that is used to define a resource group or a search for
resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Query => Str

  The query that defines a group or a search.


=head2 B<REQUIRED> Type => Str

  The type of the query. The valid values in this release are
C<TAG_FILTERS_1_0> and C<CLOUDFORMATION_STACK_1_0>.

I<C<TAG_FILTERS_1_0:> > A JSON syntax that lets you specify a
collection of simple tag filters for resource types and tags, as
supported by the AWS Tagging API GetResources
(https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html)
operation. If you specify more than one tag key, only resources that
match all tag keys, and at least one value of each specified tag key,
are returned in your query. If you specify more than one value for a
tag key, a resource matches the filter if it has a tag key value that
matches I<any> of the specified values.

For example, consider the following sample query for resources that
have two tags, C<Stage> and C<Version>, with two values each.
(C<[{"Key":"Stage","Values":["Test","Deploy"]},{"Key":"Version","Values":["1","2"]}]>)
The results of this query might include the following.

=over

=item *

An EC2 instance that has the following two tags:
C<{"Key":"Stage","Values":["Deploy"]}>, and
C<{"Key":"Version","Values":["2"]}>

=item *

An S3 bucket that has the following two tags:
{"Key":"Stage","Values":["Test","Deploy"]}, and
{"Key":"Version","Values":["1"]}

=back

The query would not return the following results, however. The
following EC2 instance does not have all tag keys specified in the
filter, so it is rejected. The RDS database has all of the tag keys,
but no values that match at least one of the specified tag key values
in the filter.

=over

=item *

An EC2 instance that has only the following tag:
C<{"Key":"Stage","Values":["Deploy"]}>.

=item *

An RDS database that has the following two tags:
C<{"Key":"Stage","Values":["Archived"]}>, and
C<{"Key":"Version","Values":["4"]}>

=back

I<C<CLOUDFORMATION_STACK_1_0:> > A JSON syntax that lets you specify a
CloudFormation stack ARN.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

