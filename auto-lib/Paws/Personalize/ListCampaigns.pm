
package Paws::Personalize::ListCampaigns;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SolutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCampaigns');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::ListCampaignsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListCampaigns - Arguments for method ListCampaigns on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCampaigns on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListCampaigns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCampaigns.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListCampaignsResponse = $personalize->ListCampaigns(
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
      SolutionArn => 'MyArn',          # OPTIONAL
    );

    # Results:
    my $Campaigns = $ListCampaignsResponse->Campaigns;
    my $NextToken = $ListCampaignsResponse->NextToken;

    # Returns a L<Paws::Personalize::ListCampaignsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListCampaigns>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of campaigns to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListCampaigns> for getting
the next set of campaigns (if they exist).



=head2 SolutionArn => Str

The Amazon Resource Name (ARN) of the solution to list the campaigns
for. When a solution is not specified, all the campaigns associated
with the account are listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCampaigns in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

