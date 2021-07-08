
package Paws::SSMIncidents::ListRelatedItems;
  use Moose;
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRelatedItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listRelatedItems');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::ListRelatedItemsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListRelatedItems - Arguments for method ListRelatedItems on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRelatedItems on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method ListRelatedItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRelatedItems.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $ListRelatedItemsOutput = $ssm -incidents->ListRelatedItems(
      IncidentRecordArn => 'MyArn',
      MaxResults        => 1,                # OPTIONAL
      NextToken         => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListRelatedItemsOutput->NextToken;
    my $RelatedItems = $ListRelatedItemsOutput->RelatedItems;

    # Returns a L<Paws::SSMIncidents::ListRelatedItemsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/ListRelatedItems>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IncidentRecordArn => Str

The Amazon Resource Name (ARN) of the incident record that you are
listing related items for.



=head2 MaxResults => Int

The maximum number of related items per page.



=head2 NextToken => Str

The pagination token to continue to the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRelatedItems in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

