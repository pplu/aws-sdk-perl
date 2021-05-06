
package Paws::MQ::ListConfigurationRevisions;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuration-id', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConfigurationRevisions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/configurations/{configuration-id}/revisions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::ListConfigurationRevisionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListConfigurationRevisions - Arguments for method ListConfigurationRevisions on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConfigurationRevisions on the
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method ListConfigurationRevisions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConfigurationRevisions.

=head1 SYNOPSIS

    my $mq = Paws->service('MQ');
    my $ListConfigurationRevisionsResponse = $mq->ListConfigurationRevisions(
      ConfigurationId => 'My__string',
      MaxResults      => 1,               # OPTIONAL
      NextToken       => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ConfigurationId = $ListConfigurationRevisionsResponse->ConfigurationId;
    my $MaxResults      = $ListConfigurationRevisionsResponse->MaxResults;
    my $NextToken       = $ListConfigurationRevisionsResponse->NextToken;
    my $Revisions       = $ListConfigurationRevisionsResponse->Revisions;

    # Returns a L<Paws::MQ::ListConfigurationRevisionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mq/ListConfigurationRevisions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationId => Str

The unique ID that Amazon MQ generates for the configuration.



=head2 MaxResults => Int

The maximum number of configurations that Amazon MQ can return per page
(20 by default). This value must be an integer from 5 to 100.



=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConfigurationRevisions in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

