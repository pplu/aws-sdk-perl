
package Paws::MQ::ListConfigurationRevisionsResponse;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::MQ::ConfigurationRevision]', traits => ['NameInRequest'], request_name => 'revisions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListConfigurationRevisionsResponse

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

The unique ID that Amazon MQ generates for the configuration.


=head2 MaxResults => Int

The maximum number of configuration revisions that can be returned per
page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 Revisions => ArrayRef[L<Paws::MQ::ConfigurationRevision>]

The list of all revisions for the specified configuration.


=head2 _request_id => Str


=cut

