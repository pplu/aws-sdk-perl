
package Paws::CloudWatchEvents::ListArchives;
  use Moose;
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NamePrefix => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListArchives');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListArchivesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListArchives - Arguments for method ListArchives on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListArchives on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListArchives.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListArchives.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListArchivesResponse = $events->ListArchives(
      EventSourceArn => 'MyArn',            # OPTIONAL
      Limit          => 1,                  # OPTIONAL
      NamePrefix     => 'MyArchiveName',    # OPTIONAL
      NextToken      => 'MyNextToken',      # OPTIONAL
      State          => 'ENABLED',          # OPTIONAL
    );

    # Results:
    my $Archives  = $ListArchivesResponse->Archives;
    my $NextToken = $ListArchivesResponse->NextToken;

    # Returns a L<Paws::CloudWatchEvents::ListArchivesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/ListArchives>

=head1 ATTRIBUTES


=head2 EventSourceArn => Str

The ARN of the event source associated with the archive.



=head2 Limit => Int

The maximum number of results to return.



=head2 NamePrefix => Str

A name prefix to filter the archives returned. Only archives with name
that match the prefix are returned.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.



=head2 State => Str

The state of the archive.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"CREATING">, C<"UPDATING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListArchives in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

