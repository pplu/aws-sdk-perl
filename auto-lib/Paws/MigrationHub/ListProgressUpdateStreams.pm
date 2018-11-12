
package Paws::MigrationHub::ListProgressUpdateStreams;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProgressUpdateStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::ListProgressUpdateStreamsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListProgressUpdateStreams - Arguments for method ListProgressUpdateStreams on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProgressUpdateStreams on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method ListProgressUpdateStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProgressUpdateStreams.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $ListProgressUpdateStreamsResult = $mgh->ListProgressUpdateStreams(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProgressUpdateStreamsResult->NextToken;
    my $ProgressUpdateStreamSummaryList =
      $ListProgressUpdateStreamsResult->ProgressUpdateStreamSummaryList;

    # Returns a L<Paws::MigrationHub::ListProgressUpdateStreamsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/ListProgressUpdateStreams>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Filter to limit the maximum number of results to list per page.



=head2 NextToken => Str

If a C<NextToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<NextToken>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProgressUpdateStreams in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

