
package Paws::IoT::ListJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has TargetSelection => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetSelection');
  has ThingGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingGroupId');
  has ThingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'thingGroupName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListJobs - Arguments for method ListJobs on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListJobsResponse = $iot->ListJobs(
      MaxResults      => 1,                     # OPTIONAL
      NextToken       => 'MyNextToken',         # OPTIONAL
      Status          => 'IN_PROGRESS',         # OPTIONAL
      TargetSelection => 'CONTINUOUS',          # OPTIONAL
      ThingGroupId    => 'MyThingGroupId',      # OPTIONAL
      ThingGroupName  => 'MyThingGroupName',    # OPTIONAL
    );

    # Results:
    my $Jobs      = $ListJobsResponse->Jobs;
    my $NextToken = $ListJobsResponse->NextToken;

    # Returns a L<Paws::IoT::ListJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per request.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 Status => Str

An optional filter that lets you search for jobs that have the
specified status.

Valid values are: C<"IN_PROGRESS">, C<"CANCELED">, C<"COMPLETED">, C<"DELETION_IN_PROGRESS">

=head2 TargetSelection => Str

Specifies whether the job will continue to run (CONTINUOUS), or will be
complete after all those things specified as targets have completed the
job (SNAPSHOT). If continuous, the job may also be run on a thing when
a change is detected in a target. For example, a job will run on a
thing when the thing is added to a target group, even after the job was
completed by all things originally in the group.

Valid values are: C<"CONTINUOUS">, C<"SNAPSHOT">

=head2 ThingGroupId => Str

A filter that limits the returned jobs to those for the specified
group.



=head2 ThingGroupName => Str

A filter that limits the returned jobs to those for the specified
group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

