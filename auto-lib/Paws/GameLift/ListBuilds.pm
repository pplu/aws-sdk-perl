
package Paws::GameLift::ListBuilds;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBuilds');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::ListBuildsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListBuilds - Arguments for method ListBuilds on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBuilds on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method ListBuilds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBuilds.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $ListBuildsOutput = $gamelift->ListBuilds(
      Limit     => 1,                     # OPTIONAL
      NextToken => 'MyNonEmptyString',    # OPTIONAL
      Status    => 'INITIALIZED',         # OPTIONAL
    );

    # Results:
    my $Builds    = $ListBuildsOutput->Builds;
    my $NextToken = $ListBuildsOutput->NextToken;

    # Returns a L<Paws::GameLift::ListBuildsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/ListBuilds>

=head1 ATTRIBUTES


=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.



=head2 Status => Str

Build status to filter results by. To retrieve all builds, leave this
parameter empty.

Possible build statuses include the following:

=over

=item *

B<INITIALIZED> -- A new build has been defined, but no files have been
uploaded. You cannot create fleets for builds that are in this status.
When a build is successfully created, the build status is set to this
value.

=item *

B<READY> -- The game build has been successfully uploaded. You can now
create new fleets for this build.

=item *

B<FAILED> -- The game build upload failed. You cannot create new fleets
for this build.

=back


Valid values are: C<"INITIALIZED">, C<"READY">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBuilds in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

